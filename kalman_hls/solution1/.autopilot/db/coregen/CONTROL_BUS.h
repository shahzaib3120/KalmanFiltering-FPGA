// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x18 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x1c : Data signal of x
//        bit 31~0 - x[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of P
//        bit 31~0 - P[31:0] (Read/Write)
// 0x28 : Data signal of P
//        bit 31~0 - P[63:32] (Read/Write)
// 0x2c : reserved
// 0x10 ~
// 0x17 : Memory 'z' (2 * 32b)
//        Word n : bit [31:0] - z[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_BUS_ADDR_AP_CTRL 0x00
#define CONTROL_BUS_ADDR_GIE     0x04
#define CONTROL_BUS_ADDR_IER     0x08
#define CONTROL_BUS_ADDR_ISR     0x0c
#define CONTROL_BUS_ADDR_X_DATA  0x18
#define CONTROL_BUS_BITS_X_DATA  64
#define CONTROL_BUS_ADDR_P_DATA  0x24
#define CONTROL_BUS_BITS_P_DATA  64
#define CONTROL_BUS_ADDR_Z_BASE  0x10
#define CONTROL_BUS_ADDR_Z_HIGH  0x17
#define CONTROL_BUS_WIDTH_Z      32
#define CONTROL_BUS_DEPTH_Z      2
