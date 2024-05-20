// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkalman_filter_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKalman_filter_top_CfgInitialize(XKalman_filter_top *InstancePtr, XKalman_filter_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKalman_filter_top_Start(XKalman_filter_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKalman_filter_top_IsDone(XKalman_filter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKalman_filter_top_IsIdle(XKalman_filter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKalman_filter_top_IsReady(XKalman_filter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKalman_filter_top_EnableAutoRestart(XKalman_filter_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XKalman_filter_top_DisableAutoRestart(XKalman_filter_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XKalman_filter_top_Set_x(XKalman_filter_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_X_DATA, (u32)(Data));
    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XKalman_filter_top_Get_x(XKalman_filter_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_X_DATA);
    Data += (u64)XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XKalman_filter_top_Set_P(XKalman_filter_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_P_DATA, (u32)(Data));
    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_P_DATA + 4, (u32)(Data >> 32));
}

u64 XKalman_filter_top_Get_P(XKalman_filter_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_P_DATA);
    Data += (u64)XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_P_DATA + 4) << 32;
    return Data;
}

u32 XKalman_filter_top_Get_z_BaseAddress(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE);
}

u32 XKalman_filter_top_Get_z_HighAddress(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH);
}

u32 XKalman_filter_top_Get_z_TotalBytes(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH - XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + 1);
}

u32 XKalman_filter_top_Get_z_BitWidth(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKALMAN_FILTER_TOP_CONTROL_BUS_WIDTH_Z;
}

u32 XKalman_filter_top_Get_z_Depth(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKALMAN_FILTER_TOP_CONTROL_BUS_DEPTH_Z;
}

u32 XKalman_filter_top_Write_z_Words(XKalman_filter_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH - XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XKalman_filter_top_Read_z_Words(XKalman_filter_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH - XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + (offset + i)*4);
    }
    return length;
}

u32 XKalman_filter_top_Write_z_Bytes(XKalman_filter_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH - XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XKalman_filter_top_Read_z_Bytes(XKalman_filter_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_HIGH - XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_Z_BASE + offset + i);
    }
    return length;
}

void XKalman_filter_top_InterruptGlobalEnable(XKalman_filter_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_GIE, 1);
}

void XKalman_filter_top_InterruptGlobalDisable(XKalman_filter_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_GIE, 0);
}

void XKalman_filter_top_InterruptEnable(XKalman_filter_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_IER);
    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XKalman_filter_top_InterruptDisable(XKalman_filter_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_IER);
    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XKalman_filter_top_InterruptClear(XKalman_filter_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_top_WriteReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XKalman_filter_top_InterruptGetEnabled(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_IER);
}

u32 XKalman_filter_top_InterruptGetStatus(XKalman_filter_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKalman_filter_top_ReadReg(InstancePtr->Control_bus_BaseAddress, XKALMAN_FILTER_TOP_CONTROL_BUS_ADDR_ISR);
}

