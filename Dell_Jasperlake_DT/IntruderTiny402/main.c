//#include <atmel_start.h>
#include "atmel_start.h"
#include <avr/sleep.h>


extern volatile uint8_t I2C_0_slave_address;
extern volatile uint8_t TimerTrigger;
extern volatile uint8_t INTTrigger;
extern volatile uint8_t TimeOut;
extern volatile uint8_t PinChanged;
extern volatile uint8_t LastPinState;
extern volatile uint8_t NowPinState;
extern volatile uint8_t PinPassed;

/* Fuse setting
 * 
 *	BODCFG.ACTIVE: Disabled
 *  BODCFG.LVL: 1.8V
 *  BODCFG.SAMPFREQ: 125HZ
 *  BODCFG.SLEEP: Disabled
 *	OSCCFG.FREQSEL: 20MHZ
 *  OSCCFG.OSCLOCK: clear
 *  TCD0CFG: all clear
 *	SYSCFG0.CRCSRC: Disable CRC
 *  SYSCFG0.RSTPINCFG: UPDI mode
 *	SYSCFG1.SUT: 64MS
 *	WDTCFG.PERIOD: off
 *  WDTCFG.WINDOW: off
 * 
 *  CRC32: 0xAC97BF01 version 5
 */

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
		/* Debounce pin level*/
		if ((PinChanged == 0x01) && (TimeOut == 0x01)) {
			/* check current pin level */
			NowPinState = VPORTA_IN & (1 << 7);
			TimeOut = 0;
			
			/* is pin with same level? */
			if ((LastPinState ^ NowPinState) == 0x0) {
				/* Yes, pin level is same */
				PinPassed--;
				/* Is the pin scan time end? */
				if (PinPassed == 0x0) {
					/* Yes, low active */
					if (NowPinState == 0x00) {
						/* Driver INT pin */
						INT_set_dir(PORT_DIR_IN);
						//TCA0.SINGLE.CMP0 = 0x621; //5mS
						TCA0.SINGLE.CMP0 = 0x1A0; /* 5mS, modified in version A1 */
						INTTrigger = 1;
						/* set flag and increase count (0~254)*/
						sysobj.IntruderChanged = 1;			
						sysobj.count++;
						if (sysobj.count >= 0xFE) {
							sysobj.count = 0xFE;
						}
					}
					/* pin with high level, so do nothing */
					else {
						TCA0.SINGLE.CTRLA &= ~TCA_SINGLE_ENABLE_bm; // 5ms time out; stop timer and set pin to output 0
						//INT_set_dir(PORT_DIR_OUT);
						TimerTrigger = 0;
					}
					/* pin is stable, so stop pin scan */
					PinChanged = 0;			
				}
				/* pin scan time is not end */
				else {
					;
				}
			}
			/* pin without same level */
			else { 
				LastPinState = NowPinState;
				PinPassed = 2; // restart pin scan times
			}
		}

		/* does need to stop driving INT pin if enabled? */
		if ((INTTrigger == 0x01) && (TimeOut == 0x01)) {
			INT_set_dir(PORT_DIR_OUT);
			TCA0.SINGLE.CTRLA &= ~TCA_SINGLE_ENABLE_bm; // 5ms time out to stop timer
			INTTrigger = 0;	
			TimeOut = 0;
			TimerTrigger = 0;
		}
		
		/* Goto sleep if no I2C and Timer activities */
		if ((I2C_0_slave_address == 0x0) && (TimerTrigger == 0x0))
		{
            ccp_write_io((void *)&(CLKCTRL.MCLKCTRLB),
                    CLKCTRL_PDIV_48X_gc /* change system clock to 333KHz before going to sleep */
                    | 1 << CLKCTRL_PEN_bp /* Prescaler enable: enabled */);
            
			sleep_cpu();
		}
	}
}
