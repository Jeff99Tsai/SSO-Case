/**
 * \file
 *
 * \brief I2C Slave driver example.
 *
 (c) 2020 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

//#include <atmel_start.h>
//#include <i2c_slave_example.h>
//#include <atomic.h>
#include "../../atmel_start.h"
#include "../include/i2c_slave_example.h"
#include "../../utils/atomic.h"

volatile uint8_t I2C_0_slave_address;
volatile uint8_t I2C_0_register_address;
//volatile uint8_t I2C_0_num_addresses;
//volatile uint8_t I2C_0_num_reads;
//volatile uint8_t I2C_0_num_writes;
//volatile uint8_t I2C_0_num_stops;
volatile uint8_t temp;

void I2C_0_address_handler()
{
	I2C_0_slave_address = I2C_0_read();
	I2C_0_send_ack();
	//I2C_0_num_addresses++;
}

void I2C_0_read_handler()
{ // Master read operation
	//if (I2C_0_register_address == 0x01) {		// register 0x01 reports intruder pin if ever triggered
		//I2C_0_write(sysobj.IntruderChanged);
	//}
	//else if (I2C_0_register_address == 0x02) {
		//I2C_0_write(sysobj.count);
	//}
	//else if (I2C_0_register_address == 0x04) {	// register 0x02 reports intruder pin level
		//if (VPORTA_IN & (1 << 7))				// bit 7 reports current level.
		//{
			//sysobj.IntruderState = 0x80;
		//}
		//else
		//{
			//sysobj.IntruderState = 0x00;
		//}
		//I2C_0_write(sysobj.IntruderState);
	//}
	//else {
		//I2C_0_write(0xAA); //illegal register, report 0xAA
	//}
	
	switch (I2C_0_register_address)
	{
		case 0x00:
			//I2C_0_write(0xA0);	// firmware version
			I2C_0_write(0x05);	/* version 0x05 */
			break;
		case 0x01:
			I2C_0_write(sysobj.IntruderChanged);
			break;
		case 0x02:
			I2C_0_write(sysobj.count);
			break;
		case 0x04:
			sysobj.IntruderState = 0x00;
			if (VPORTA_IN & (1 << 7)) {	// bit 7 reports current level.
					sysobj.IntruderState = 0x80;
			}
			I2C_0_write(sysobj.IntruderState);
			break;
		default:
			I2C_0_write(0xAA); //illegal register, report 0xAA
	}
	//I2C_0_num_reads++;
}

void I2C_0_write_handler()
{ // Master write handler
	temp = I2C_0_read();
	if (I2C_0_register_address) {
		if ((I2C_0_register_address == 0x01) && (temp == 0x01)) { // write 0x01 to register 0x01 to clear intruder flag
			if (VPORTA_IN & (1 << 7)) { // if case opened, not to clear flag and count
				sysobj.IntruderChanged = 0;
				sysobj.count = 0;
			}	
		}
	}
	else {
		I2C_0_register_address = temp; // first byte is register
	}
	I2C_0_send_ack(); // or send_nack() if we don't want to receive more data
	//I2C_0_num_writes++;
}

void I2C_0_stop_handler()
{
	I2C_0_slave_address = 0;
	I2C_0_register_address = 0;
	//I2C_0_num_stops++;
}

//void I2C_0_error_handler()
//{
	//while (1)
		//;
//}

uint8_t I2C_0_test_i2c_slave(void)
{

	I2C_0_set_read_callback(I2C_0_read_handler);
	I2C_0_set_write_callback(I2C_0_write_handler);
	I2C_0_set_address_callback(I2C_0_address_handler);
	I2C_0_set_stop_callback(I2C_0_stop_handler);
	//I2C_0_set_collision_callback(I2C_0_error_handler);
	//I2C_0_set_bus_error_callback(I2C_0_error_handler);
	I2C_0_open();
	
	I2C_0_slave_address = 0;
	I2C_0_register_address = 0;

	return 1;
}
