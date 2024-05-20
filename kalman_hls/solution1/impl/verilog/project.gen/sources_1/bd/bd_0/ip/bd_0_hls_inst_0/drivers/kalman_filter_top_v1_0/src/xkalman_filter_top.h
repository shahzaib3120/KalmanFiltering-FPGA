// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKALMAN_FILTER_TOP_H
#define XKALMAN_FILTER_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkalman_filter_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_bus_BaseAddress;
} XKalman_filter_top_Config;
#endif

typedef struct {
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XKalman_filter_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKalman_filter_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKalman_filter_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKalman_filter_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKalman_filter_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKalman_filter_top_Initialize(XKalman_filter_top *InstancePtr, u16 DeviceId);
XKalman_filter_top_Config* XKalman_filter_top_LookupConfig(u16 DeviceId);
int XKalman_filter_top_CfgInitialize(XKalman_filter_top *InstancePtr, XKalman_filter_top_Config *ConfigPtr);
#else
int XKalman_filter_top_Initialize(XKalman_filter_top *InstancePtr, const char* InstanceName);
int XKalman_filter_top_Release(XKalman_filter_top *InstancePtr);
#endif

void XKalman_filter_top_Start(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_IsDone(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_IsIdle(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_IsReady(XKalman_filter_top *InstancePtr);
void XKalman_filter_top_EnableAutoRestart(XKalman_filter_top *InstancePtr);
void XKalman_filter_top_DisableAutoRestart(XKalman_filter_top *InstancePtr);

void XKalman_filter_top_Set_x(XKalman_filter_top *InstancePtr, u64 Data);
u64 XKalman_filter_top_Get_x(XKalman_filter_top *InstancePtr);
void XKalman_filter_top_Set_P(XKalman_filter_top *InstancePtr, u64 Data);
u64 XKalman_filter_top_Get_P(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Get_z_BaseAddress(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Get_z_HighAddress(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Get_z_TotalBytes(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Get_z_BitWidth(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Get_z_Depth(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_Write_z_Words(XKalman_filter_top *InstancePtr, int offset, word_type *data, int length);
u32 XKalman_filter_top_Read_z_Words(XKalman_filter_top *InstancePtr, int offset, word_type *data, int length);
u32 XKalman_filter_top_Write_z_Bytes(XKalman_filter_top *InstancePtr, int offset, char *data, int length);
u32 XKalman_filter_top_Read_z_Bytes(XKalman_filter_top *InstancePtr, int offset, char *data, int length);

void XKalman_filter_top_InterruptGlobalEnable(XKalman_filter_top *InstancePtr);
void XKalman_filter_top_InterruptGlobalDisable(XKalman_filter_top *InstancePtr);
void XKalman_filter_top_InterruptEnable(XKalman_filter_top *InstancePtr, u32 Mask);
void XKalman_filter_top_InterruptDisable(XKalman_filter_top *InstancePtr, u32 Mask);
void XKalman_filter_top_InterruptClear(XKalman_filter_top *InstancePtr, u32 Mask);
u32 XKalman_filter_top_InterruptGetEnabled(XKalman_filter_top *InstancePtr);
u32 XKalman_filter_top_InterruptGetStatus(XKalman_filter_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
