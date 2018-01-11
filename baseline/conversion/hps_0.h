#ifndef _ALTERA_HPS_0_H_
#define _ALTERA_HPS_0_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'baseline_qsys' in
 * file '../hardware/baseline_qsys.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following masters:
 *   h2f_axi_master
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'onchip_memory2_0', class 'altera_avalon_onchip_memory2'
 * The macros are prefixed with 'ONCHIP_MEMORY2_0_'.
 * The prefix is the slave descriptor.
 */
#define ONCHIP_MEMORY2_0_COMPONENT_TYPE altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_COMPONENT_NAME onchip_memory2_0
#define ONCHIP_MEMORY2_0_BASE 0x0
#define ONCHIP_MEMORY2_0_SPAN 131072
#define ONCHIP_MEMORY2_0_END 0x1ffff
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE AUTO
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE baseline_qsys_onchip_memory2_0
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_0_INSTANCE_ID NONE
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE AUTO
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE DONT_CARE
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 131072
#define ONCHIP_MEMORY2_0_WRITABLE 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
#define ONCHIP_MEMORY2_0_MEMORY_INFO_GENERATE_DAT_SYM 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_GENERATE_HEX 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_HAS_BYTE_LANE 0
#define ONCHIP_MEMORY2_0_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
#define ONCHIP_MEMORY2_0_MEMORY_INFO_MEM_INIT_DATA_WIDTH 8
#define ONCHIP_MEMORY2_0_MEMORY_INFO_MEM_INIT_FILENAME baseline_qsys_onchip_memory2_0

/*
 * Macros for device 'hw_correlate_0', class 'hw_correlate'
 * The macros are prefixed with 'HW_CORRELATE_0_'.
 * The prefix is the slave descriptor.
 */
#define HW_CORRELATE_0_COMPONENT_TYPE hw_correlate
#define HW_CORRELATE_0_COMPONENT_NAME hw_correlate_0
#define HW_CORRELATE_0_BASE 0x0
#define HW_CORRELATE_0_SPAN 1024
#define HW_CORRELATE_0_END 0x3ff

/*
 * Macros for device 'switch_pio_1', class 'altera_avalon_pio'
 * The macros are prefixed with 'SWITCH_PIO_1_'.
 * The prefix is the slave descriptor.
 */
#define SWITCH_PIO_1_COMPONENT_TYPE altera_avalon_pio
#define SWITCH_PIO_1_COMPONENT_NAME switch_pio_1
#define SWITCH_PIO_1_BASE 0x40000
#define SWITCH_PIO_1_SPAN 16
#define SWITCH_PIO_1_END 0x4000f
#define SWITCH_PIO_1_BIT_CLEARING_EDGE_REGISTER 0
#define SWITCH_PIO_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SWITCH_PIO_1_CAPTURE 0
#define SWITCH_PIO_1_DATA_WIDTH 10
#define SWITCH_PIO_1_DO_TEST_BENCH_WIRING 0
#define SWITCH_PIO_1_DRIVEN_SIM_VALUE 0
#define SWITCH_PIO_1_EDGE_TYPE NONE
#define SWITCH_PIO_1_FREQ 150000000
#define SWITCH_PIO_1_HAS_IN 1
#define SWITCH_PIO_1_HAS_OUT 0
#define SWITCH_PIO_1_HAS_TRI 0
#define SWITCH_PIO_1_IRQ_TYPE NONE
#define SWITCH_PIO_1_RESET_VALUE 0

/*
 * Macros for device 'led_pio_0', class 'altera_avalon_pio'
 * The macros are prefixed with 'LED_PIO_0_'.
 * The prefix is the slave descriptor.
 */
#define LED_PIO_0_COMPONENT_TYPE altera_avalon_pio
#define LED_PIO_0_COMPONENT_NAME led_pio_0
#define LED_PIO_0_BASE 0x40010
#define LED_PIO_0_SPAN 16
#define LED_PIO_0_END 0x4001f
#define LED_PIO_0_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_PIO_0_CAPTURE 0
#define LED_PIO_0_DATA_WIDTH 10
#define LED_PIO_0_DO_TEST_BENCH_WIRING 0
#define LED_PIO_0_DRIVEN_SIM_VALUE 0
#define LED_PIO_0_EDGE_TYPE NONE
#define LED_PIO_0_FREQ 150000000
#define LED_PIO_0_HAS_IN 0
#define LED_PIO_0_HAS_OUT 1
#define LED_PIO_0_HAS_TRI 0
#define LED_PIO_0_IRQ_TYPE NONE
#define LED_PIO_0_RESET_VALUE 0


#endif /* _ALTERA_HPS_0_H_ */
