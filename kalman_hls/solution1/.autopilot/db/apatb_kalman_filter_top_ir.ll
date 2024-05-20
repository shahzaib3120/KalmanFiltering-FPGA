; ModuleID = '/home/shahlarious/FPGA/Vivado/KalmanFiltering/kalman_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline
define void @apatb_kalman_filter_top_ir(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %z, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" %x, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" %P) local_unnamed_addr #0 {
entry:
  %z_copy = alloca [2 x i32], align 512
  %x_copy = alloca [4 x i32], align 512
  %P_copy = alloca [4 x [4 x i32]], align 512
  %0 = bitcast %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %z to [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %x to [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  %2 = bitcast [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %P to [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]*
  call fastcc void @copy_in([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [2 x i32]* nonnull align 512 %z_copy, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [4 x i32]* nonnull align 512 %x_copy, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [4 x [4 x i32]]* nonnull align 512 %P_copy)
  %3 = getelementptr [2 x i32], [2 x i32]* %z_copy, i32 0, i32 0
  %4 = getelementptr [4 x i32], [4 x i32]* %x_copy, i32 0, i32 0
  %5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %P_copy, i32 0, i32 0
  call void @apatb_kalman_filter_top_hw(i32* %3, i32* %4, [4 x i32]* %5)
  call void @copy_back([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, [2 x i32]* %z_copy, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, [4 x i32]* %x_copy, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %2, [4 x [4 x i32]]* %P_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [2 x i32]* noalias nocapture align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="2", [4 x i32]* noalias nocapture align 512 "unpacked"="3.0.0.0", [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="4", [4 x [4 x i32]]* noalias align 512 "unpacked"="5") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.47"([2 x i32]* align 512 %1, [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([4 x i32]* align 512 %3, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a4a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([4 x [4 x i32]]* align 512 %5, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([4 x [4 x i32]]* noalias align 512, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4 x i32]]* %0, null
  %3 = icmp eq [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i32, i32* %src.addr6.0.0.013, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [2 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [4 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="4", [4 x [4 x i32]]* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, [2 x i32]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.23"([4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %2, [4 x i32]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a4a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.72"([4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [4 x i32]]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.23"([4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [4 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x i32], [4 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([4 x i32]* noalias nocapture align 512 "unpacked"="0.0.0.0", [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4 x i32], [4 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.47"([2 x i32]* noalias nocapture align 512 "unpacked"="0.0.0.0", [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2 x i32], [2 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [2 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2 x i32], [2 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.72"([4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* noalias, [4 x [4 x i32]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [4 x [4 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]], [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr5.0.0.014, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_kalman_filter_top_hw(i32*, i32*, [4 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [2 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [4 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="4", [4 x [4 x i32]]* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.23"([4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %2, [4 x i32]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a4a4struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.72"([4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [4 x i32]]* align 512 %5)
  ret void
}

define void @kalman_filter_top_hw_stub_wrapper(i32*, i32*, [4 x i32]*) #4 {
entry:
  %3 = alloca [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]
  %4 = alloca [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]
  %5 = alloca [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]
  %6 = bitcast i32* %0 to [2 x i32]*
  %7 = bitcast i32* %1 to [4 x i32]*
  %8 = bitcast [4 x i32]* %2 to [4 x [4 x i32]]*
  call void @copy_out([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3, [2 x i32]* %6, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %4, [4 x i32]* %7, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %5, [4 x [4 x i32]]* %8)
  %9 = bitcast [2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*
  %10 = bitcast [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*
  %11 = bitcast [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %5 to [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  call void @kalman_filter_top_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %9, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %10, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %11)
  call void @copy_in([2 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3, [2 x i32]* %6, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %4, [4 x i32]* %7, [4 x [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]]* %5, [4 x [4 x i32]]* %8)
  ret void
}

declare void @kalman_filter_top_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, [4 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
