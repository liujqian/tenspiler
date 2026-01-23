; ModuleID = './for_synthesis/darknet/translate4.ll'
source_filename = "./for_synthesis/darknet/translate4.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { double*, double*, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { double* }
%"class.std::__1::vector.1" = type { %"class.std::__1::__vector_base.2" }
%"class.std::__1::__vector_base.2" = type { i32*, i32*, %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { i32* }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::__vector_base_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_destroy" = type { i8 }
%"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction" = type { %"class.std::__1::vector"*, double*, double* }
%"struct.std::__1::__split_buffer" = type { double*, double*, double*, %"class.std::__1::__compressed_pair.8" }
%"class.std::__1::__compressed_pair.8" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.9" }
%"struct.std::__1::__compressed_pair_elem.9" = type { %"class.std::__1::allocator"* }
%"struct.std::__1::__has_construct" = type { i8 }
%"class.std::__1::__split_buffer_common" = type { i8 }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__has_max_size" = type { i8 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }
%"struct.std::__1::integral_constant.10" = type { i8 }

$_ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev = comdat any

$_ZNSt3__120__vector_base_commonILb1EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_ = comdat any

$_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE = comdat any

$_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_ = comdat any

$_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE = comdat any

$_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2ENS_18__default_init_tagE = comdat any

$_ZNSt3__19allocatorIdEC2Ev = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteEv = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerEPKvS5_S5_S5_ = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv = comdat any

$_ZNSt3__112__to_addressIdEEPT_S2_ = comdat any

$_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv = comdat any

$_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv = comdat any

$_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv = comdat any

$_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyIdEEvRS2_PT_ = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9__destroyIdEEvNS_17integral_constantIbLb1EEERS2_PT_ = comdat any

$_ZNSt3__19allocatorIdE7destroyEPd = comdat any

$_ZNSt3__19allocatorIdE10deallocateEPdm = comdat any

$_ZNSt3__119__libcpp_deallocateEPvmm = comdat any

$_ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm = comdat any

$_ZNSt3__117_DeallocateCaller27__do_deallocate_handle_sizeEPvm = comdat any

$_ZNSt3__117_DeallocateCaller9__do_callEPv = comdat any

$_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv = comdat any

$_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv = comdat any

$_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_ = comdat any

$_ZNSt3__14moveIRdEEONS_16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_ = comdat any

$_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv = comdat any

$_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE11__constructIdJdEEEvNS_17integral_constantIbLb1EEERS2_PT_DpOT0_ = comdat any

$_ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_ = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_ = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv = comdat any

$_ZNSt3__13maxImEERKT_S3_S3_ = comdat any

$_ZNSt3__13minImEERKT_S3_S3_ = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeERKS2_ = comdat any

$_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv = comdat any

$_ZNSt3__114numeric_limitsIlE3maxEv = comdat any

$_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_ = comdat any

$_ZNKSt3__16__lessImmEclERKmS3_ = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_ = comdat any

$_ZNKSt3__19allocatorIdE8max_sizeEv = comdat any

$_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv = comdat any

$_ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv = comdat any

$_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv = comdat any

$_ZNSt3__13maxImNS_6__lessImmEEEERKT_S5_S5_T0_ = comdat any

$_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_ = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocEv = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv = comdat any

$_ZNSt3__17forwardIRNS_9allocatorIdEEEEOT_RNS_16remove_referenceIS4_E4typeE = comdat any

$_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_ = comdat any

$_ZNSt3__19allocatorIdE8allocateEm = comdat any

$_ZNSt3__120__throw_length_errorEPKc = comdat any

$_ZNSt3__117__libcpp_allocateEmm = comdat any

$_ZNSt12length_errorC2EPKc = comdat any

$_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondEv = comdat any

$_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getEv = comdat any

$_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv = comdat any

$_ZNSt3__116allocator_traitsINS_9allocatorIdEEE46__construct_backward_with_exception_guaranteesIdEENS_9enable_ifIXaaooL_ZNS_17integral_constantIbLb1EE5valueEEntsr15__has_constructIS2_PT_S8_EE5valuesr31is_trivially_move_constructibleIS8_EE5valueEvE4typeERS2_S9_S9_RS9_ = comdat any

$_ZNSt3__14swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newEm = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE26__invalidate_all_iteratorsEv = comdat any

$_ZNSt3__14moveIRPdEEONS_16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv = comdat any

$_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd = comdat any

$_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE = comdat any

$_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv = comdat any

$_ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv = comdat any

@.str = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external dso_local constant i8*
@_ZTVSt12length_error = external dso_local unnamed_addr constant { [5 x i8*] }, align 8

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z10translate4NSt3__16vectorIiNS_9allocatorIiEEEEii(%"class.std::__1::vector"* noalias sret align 8 %agg.result, %"class.std::__1::vector.1"* %a, i32 %n, i32 %s) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca double, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i2 = load i32, i32* %i, align 4
  %i3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %i2, %i3
  br i1 %cmp, label %bb, label %bb8

for.body:                                         ; preds = %bb
  %i4 = load i32, i32* %i, align 4
  %conv = sext i32 %i4 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector.1"* %a, i64 %conv) #10
  %i5 = load i32, i32* %call, align 4
  %i6 = load i32, i32* %s.addr, align 4
  %add = add nsw i32 %i5, %i6
  %conv1 = sitofp i32 %add to double
  store double %conv1, double* %ref.tmp, align 8
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd(%"class.std::__1::vector"* %agg.result, double* nonnull align 8 dereferenceable(8) %ref.tmp)
  br label %invoke.cont

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %i7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %i7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %bb8
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %bb9, label %bb10

nrvo.unused:                                      ; preds = %bb10
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev(%"class.std::__1::vector"* %agg.result) #10
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %bb9, %nrvo.unused
  ret void

bb:                                               ; preds = %for.cond
  br label %for.body

bb8:                                              ; preds = %for.cond
  br label %for.end

bb9:                                              ; preds = %for.end
  br label %nrvo.skipdtor

bb10:                                             ; preds = %for.end
  br label %nrvo.unused
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev(%"class.std::__1::vector"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  call void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev(%"class.std::__1::__vector_base"* %i) #10
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd(%"class.std::__1::vector"* %this, double* nonnull align 8 dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__x.addr = alloca double*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i, i32 0, i32 1
  %i1 = load double*, double** %__end_, align 8
  %i2 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv(%"class.std::__1::__vector_base"* %i2) #10
  %i3 = load double*, double** %call, align 8
  %cmp = icmp ult double* %i1, %i3
  br i1 %cmp, label %bb, label %bb6

if.then:                                          ; preds = %bb
  %i4 = load double*, double** %__x.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__14moveIRdEEONS_16remove_referenceIT_E4typeEOS3_(double* nonnull align 8 dereferenceable(8) %i4) #10
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_(%"class.std::__1::vector"* %this1, double* nonnull align 8 dereferenceable(8) %call2)
  br label %if.end

if.else:                                          ; preds = %bb6
  %i5 = load double*, double** %__x.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__14moveIRdEEONS_16remove_referenceIT_E4typeEOS3_(double* nonnull align 8 dereferenceable(8) %i5) #10
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_(%"class.std::__1::vector"* %this1, double* nonnull align 8 dereferenceable(8) %call3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void

bb:                                               ; preds = %entry
  br label %if.then

bb6:                                              ; preds = %entry
  br label %if.else
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector.1"* %this, i64 %__n) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::vector.1"* %this, %"class.std::__1::vector.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::vector.1"*, %"class.std::__1::vector.1"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector.1"* %this1 to %"class.std::__1::__vector_base.2"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base.2", %"class.std::__1::__vector_base.2"* %i, i32 0, i32 0
  %i1 = load i32*, i32** %__begin_, align 8
  %i2 = load i64, i64* %__n.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %i1, i64 %i2
  ret i32* %arrayidx
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev(%"class.std::__1::vector"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  call void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteEv(%"class.std::__1::vector"* %this1) #10
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  call void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev(%"class.std::__1::__vector_base"* %i) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev(%"class.std::__1::__vector_base"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  %ref.tmp = alloca i8*, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__vector_base"* %this1 to %"class.std::__1::__vector_base_common"*
  call void @_ZNSt3__120__vector_base_commonILb1EEC2Ev(%"class.std::__1::__vector_base_common"* %i)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  store double* null, double** %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 1
  store double* null, double** %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  store i8* null, i8** %ref.tmp, align 8
  call void @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* %__end_cap_, i8** nonnull align 8 dereferenceable(8) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2)
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__120__vector_base_commonILb1EEC2Ev(%"class.std::__1::__vector_base_common"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base_common"*, align 8
  store %"class.std::__1::__vector_base_common"* %this, %"class.std::__1::__vector_base_common"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base_common"*, %"class.std::__1::__vector_base_common"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %arg) #2 comdat {
bb:
  %i = call i8* @__cxa_begin_catch(i8* %arg) #10
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* %this, i8** nonnull align 8 dereferenceable(8) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca i8**, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store i8** %__t1, i8*** %__t1.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %i1 = load i8**, i8*** %__t1.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %i1) #10
  call void @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* %i, i8** nonnull align 8 dereferenceable(8) %call)
  %i2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %i3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %i3) #10
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %i2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %__t) #1 comdat {
entry:
  %__t.addr = alloca i8**, align 8
  store i8** %__t, i8*** %__t.addr, align 8
  %i = load i8**, i8*** %__t.addr, align 8
  ret i8** %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* %this, i8** nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  %__u.addr = alloca i8**, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  store i8** %__u, i8*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %i = load i8**, i8*** %__u.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %i) #10
  store double* null, double** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t) #1 comdat {
entry:
  %__t.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %__t, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  %i = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  ret %"struct.std::__1::__default_init_tag"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %i = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %i1 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  call void @_ZNSt3__19allocatorIdEC2Ev(%"class.std::__1::allocator"* %i1) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIdEC2Ev(%"class.std::__1::allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteEv(%"class.std::__1::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %call = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %i = bitcast double* %call to i8*
  %call2 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %call3 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this1) #10
  %add.ptr = getelementptr inbounds double, double* %call2, i64 %call3
  %i1 = bitcast double* %add.ptr to i8*
  %call4 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %call5 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv(%"class.std::__1::vector"* %this1) #10
  %add.ptr6 = getelementptr inbounds double, double* %call4, i64 %call5
  %i2 = bitcast double* %add.ptr6 to i8*
  %call7 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %call8 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this1) #10
  %add.ptr9 = getelementptr inbounds double, double* %call7, i64 %call8
  %i3 = bitcast double* %add.ptr9 to i8*
  call void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerEPKvS5_S5_S5_(%"class.std::__1::vector"* %this1, i8* %i, i8* %i1, i8* %i2, i8* %i3) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev(%"class.std::__1::__vector_base"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %i = load double*, double** %__begin_, align 8
  %cmp = icmp ne double* %i, null
  br i1 %cmp, label %bb, label %bb2

if.then:                                          ; preds = %bb
  call void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv(%"class.std::__1::__vector_base"* %this1) #10
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %this1) #10
  %__begin_2 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %i1 = load double*, double** %__begin_2, align 8
  %call3 = call i64 @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::__vector_base"* %this1) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %i1, i64 %call3) #10
  br label %if.end

if.end:                                           ; preds = %bb2, %if.then
  ret void

bb:                                               ; preds = %entry
  br label %if.then

bb2:                                              ; preds = %entry
  br label %if.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerEPKvS5_S5_S5_(%"class.std::__1::vector"* %this, i8* %arg, i8* %arg1, i8* %arg2, i8* %arg3) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  %.addr2 = alloca i8*, align 8
  %.addr3 = alloca i8*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store i8* %arg, i8** %.addr, align 8
  store i8* %arg1, i8** %.addr1, align 8
  store i8* %arg2, i8** %.addr2, align 8
  store i8* %arg3, i8** %.addr3, align 8
  %this4 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i, i32 0, i32 0
  %i1 = load double*, double** %__begin_, align 8
  %call = call double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %i1) #10
  ret double* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call i64 @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::__vector_base"* %i) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv(%"class.std::__1::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i, i32 0, i32 1
  %i1 = load double*, double** %__end_, align 8
  %i2 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i2, i32 0, i32 0
  %i3 = load double*, double** %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %i1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %i3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %__p) #1 comdat {
entry:
  %__p.addr = alloca double*, align 8
  store double* %__p, double** %__p.addr, align 8
  %i = load double*, double** %__p.addr, align 8
  ret double* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv(%"class.std::__1::__vector_base"* %this1) #10
  %i = load double*, double** %call, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %i1 = load double*, double** %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %i to i64
  %sub.ptr.rhs.cast = ptrtoint double* %i1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %i) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret double** %__value_
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %i = load double*, double** %__begin_, align 8
  call void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd(%"class.std::__1::__vector_base"* %this1, double* %i) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p, i64 %__n) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i1 = load double*, double** %__p.addr, align 8
  %i2 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt3__19allocatorIdE10deallocateEPdm(%"class.std::__1::allocator"* %i, double* %i1, i64 %i2) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd(%"class.std::__1::__vector_base"* %this, double* %__new_last) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  %__new_last.addr = alloca double*, align 8
  %__soon_to_be_end = alloca double*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  store double* %__new_last, double** %__new_last.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 1
  %i = load double*, double** %__end_, align 8
  store double* %i, double** %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %i1 = load double*, double** %__new_last.addr, align 8
  %i2 = load double*, double** %__soon_to_be_end, align 8
  %cmp = icmp ne double* %i1, %i2
  br i1 %cmp, label %bb, label %bb5

while.body:                                       ; preds = %bb
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %this1) #10
  %i3 = load double*, double** %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds double, double* %i3, i32 -1
  store double* %incdec.ptr, double** %__soon_to_be_end, align 8
  %call2 = call double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %incdec.ptr) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyIdEEvRS2_PT_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %call2)
  br label %invoke.cont

invoke.cont:                                      ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %bb5
  %i4 = load double*, double** %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 1
  store double* %i4, double** %__end_3, align 8
  ret void

bb:                                               ; preds = %while.cond
  br label %while.body

bb5:                                              ; preds = %while.cond
  br label %while.end
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyIdEEvRS2_PT_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp = alloca %"struct.std::__1::__has_destroy", align 1
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %i = bitcast %"struct.std::__1::__has_destroy"* %ref.tmp to %"struct.std::__1::integral_constant"*
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i2 = load double*, double** %__p.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9__destroyIdEEvNS_17integral_constantIbLb1EEERS2_PT_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1, double* %i2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9__destroyIdEEvNS_17integral_constantIbLb1EEERS2_PT_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p) #0 comdat align 2 {
entry:
  %i = alloca %"struct.std::__1::integral_constant", align 1
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i2 = load double*, double** %__p.addr, align 8
  call void @_ZNSt3__19allocatorIdE7destroyEPd(%"class.std::__1::allocator"* %i1, double* %i2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIdE7destroyEPd(%"class.std::__1::allocator"* %this, double* %__p) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIdE10deallocateEPdm(%"class.std::__1::allocator"* %this, double* %__p, i64 %__n) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %i = load double*, double** %__p.addr, align 8
  %i1 = bitcast double* %i to i8*
  %i2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %i2, 8
  call void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* %i1, i64 %mul, i64 8)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* %__ptr, i64 %__size, i64 %__align) #0 comdat {
entry:
  %__ptr.addr = alloca i8*, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  store i64 %__size, i64* %__size.addr, align 8
  store i64 %__align, i64* %__align.addr, align 8
  %i = load i8*, i8** %__ptr.addr, align 8
  %i1 = load i64, i64* %__size.addr, align 8
  %i2 = load i64, i64* %__align.addr, align 8
  call void @_ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm(i8* %i, i64 %i1, i64 %i2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden void @_ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm(i8* %__ptr, i64 %__size, i64 %__align) #0 comdat align 2 {
entry:
  %__ptr.addr = alloca i8*, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  store i64 %__size, i64* %__size.addr, align 8
  store i64 %__align, i64* %__align.addr, align 8
  %i = load i8*, i8** %__ptr.addr, align 8
  %i1 = load i64, i64* %__size.addr, align 8
  call void @_ZNSt3__117_DeallocateCaller27__do_deallocate_handle_sizeEPvm(i8* %i, i64 %i1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__117_DeallocateCaller27__do_deallocate_handle_sizeEPvm(i8* %__ptr, i64 %__size) #0 comdat align 2 {
entry:
  %__ptr.addr = alloca i8*, align 8
  %__size.addr = alloca i64, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  store i64 %__size, i64* %__size.addr, align 8
  %i = load i8*, i8** %__ptr.addr, align 8
  call void @_ZNSt3__117_DeallocateCaller9__do_callEPv(i8* %i)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__117_DeallocateCaller9__do_callEPv(i8* %__ptr) #1 comdat align 2 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  %i = load i8*, i8** %__ptr.addr, align 8
  call void @_ZdlPv(i8* %i) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %i) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %i = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #10
  ret double** %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_(%"class.std::__1::vector"* %this, double* nonnull align 8 dereferenceable(8) %__args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__args.addr = alloca double*, align 8
  %__tx = alloca %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store double* %__args, double** %__args.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m(%"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %__tx, %"class.std::__1::vector"* nonnull align 8 dereferenceable(24) %this1, i64 1)
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %i) #10
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %__tx, i32 0, i32 1
  %i1 = load double*, double** %__pos_, align 8
  %call2 = call double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %i1) #10
  %i2 = load double*, double** %__args.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %i2) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEEEvRS2_PT_DpOT0_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %call2, double* nonnull align 8 dereferenceable(8) %call3)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %__tx, i32 0, i32 1
  %i3 = load double*, double** %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds double, double* %i3, i32 1
  store double* %incdec.ptr, double** %__pos_4, align 8
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev(%"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %__tx) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double* @_ZNSt3__14moveIRdEEONS_16remove_referenceIT_E4typeEOS3_(double* nonnull align 8 dereferenceable(8) %__t) #1 comdat {
entry:
  %__t.addr = alloca double*, align 8
  store double* %__t, double** %__t.addr, align 8
  %i = load double*, double** %__t.addr, align 8
  ret double* %i
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_(%"class.std::__1::vector"* %this, double* nonnull align 8 dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__x.addr = alloca double*, align 8
  %__a = alloca %"class.std::__1::allocator"*, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %i) #10
  store %"class.std::__1::allocator"* %call, %"class.std::__1::allocator"** %__a, align 8
  %call2 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv(%"class.std::__1::vector"* %this1) #10
  %add = add i64 %call2, 1
  %call3 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm(%"class.std::__1::vector"* %this1, i64 %add)
  %call4 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv(%"class.std::__1::vector"* %this1) #10
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a, align 8
  call void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_(%"struct.std::__1::__split_buffer"* %__v, i64 %call3, i64 %call4, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1)
  %i2 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %__v, i32 0, i32 2
  %i3 = load double*, double** %__end_, align 8
  %call5 = call double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %i3) #10
  %i4 = load double*, double** %__x.addr, align 8
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %i4) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEEEvRS2_PT_DpOT0_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i2, double* %call5, double* nonnull align 8 dereferenceable(8) %call6)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %__v, i32 0, i32 2
  %i5 = load double*, double** %__end_7, align 8
  %incdec.ptr = getelementptr inbounds double, double* %i5, i32 1
  store double* %incdec.ptr, double** %__end_7, align 8
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE(%"class.std::__1::vector"* %this1, %"struct.std::__1::__split_buffer"* nonnull align 8 dereferenceable(40) %__v)
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %invoke.cont
  call void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev(%"struct.std::__1::__split_buffer"* %__v) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %i) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret double** %__value_
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m(%"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this, %"class.std::__1::vector"* nonnull align 8 dereferenceable(24) %__v, i64 %__n) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"*, align 8
  %__v.addr = alloca %"class.std::__1::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this, %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"** %this.addr, align 8
  store %"class.std::__1::vector"* %__v, %"class.std::__1::vector"** %__v.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"*, %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"** %this.addr, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this1, i32 0, i32 0
  %i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__v.addr, align 8
  store %"class.std::__1::vector"* %i, %"class.std::__1::vector"** %__v_, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this1, i32 0, i32 1
  %i1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__v.addr, align 8
  %i2 = bitcast %"class.std::__1::vector"* %i1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i2, i32 0, i32 1
  %i3 = load double*, double** %__end_, align 8
  store double* %i3, double** %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this1, i32 0, i32 2
  %i4 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__v.addr, align 8
  %i5 = bitcast %"class.std::__1::vector"* %i4 to %"class.std::__1::__vector_base"*
  %__end_2 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i5, i32 0, i32 1
  %i6 = load double*, double** %__end_2, align 8
  %i7 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %i6, i64 %i7
  store double* %add.ptr, double** %__new_end_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEEEvRS2_PT_DpOT0_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p, double* nonnull align 8 dereferenceable(8) %__args) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__args.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp = alloca %"struct.std::__1::__has_construct", align 1
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__args, double** %__args.addr, align 8
  %i = bitcast %"struct.std::__1::__has_construct"* %ref.tmp to %"struct.std::__1::integral_constant"*
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i2 = load double*, double** %__p.addr, align 8
  %i3 = load double*, double** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %i3) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE11__constructIdJdEEEvNS_17integral_constantIbLb1EEERS2_PT_DpOT0_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1, double* %i2, double* nonnull align 8 dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %__t) #1 comdat {
entry:
  %__t.addr = alloca double*, align 8
  store double* %__t, double** %__t.addr, align 8
  %i = load double*, double** %__t.addr, align 8
  ret double* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev(%"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"*, align 8
  store %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this, %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"** %this.addr, align 8
  %this1 = load %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"*, %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"** %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this1, i32 0, i32 1
  %i = load double*, double** %__pos_, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction", %"struct.std::__1::vector<double, std::__1::allocator<double>>::_ConstructTransaction"* %this1, i32 0, i32 0
  %i1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__v_, align 8
  %i2 = bitcast %"class.std::__1::vector"* %i1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i2, i32 0, i32 1
  store double* %i, double** %__end_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE11__constructIdJdEEEvNS_17integral_constantIbLb1EEERS2_PT_DpOT0_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p, double* nonnull align 8 dereferenceable(8) %__args) #0 comdat align 2 {
entry:
  %i = alloca %"struct.std::__1::integral_constant", align 1
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__args.addr = alloca double*, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__args, double** %__args.addr, align 8
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i2 = load double*, double** %__p.addr, align 8
  %i3 = load double*, double** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %i3) #10
  call void @_ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_(%"class.std::__1::allocator"* %i1, double* %i2, double* nonnull align 8 dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_(%"class.std::__1::allocator"* %this, double* %__p, double* nonnull align 8 dereferenceable(8) %__args) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__args.addr = alloca double*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__args, double** %__args.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %i = load double*, double** %__p.addr, align 8
  %i1 = bitcast double* %i to i8*
  %i2 = bitcast i8* %i1 to double*
  %i3 = load double*, double** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt3__17forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE(double* nonnull align 8 dereferenceable(8) %i3) #10
  %i4 = load double, double* %call, align 8
  store double %i4, double* %i2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm(%"class.std::__1::vector"* %this, i64 %__new_size) #0 comdat align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store i64 %__new_size, i64* %__new_size.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv(%"class.std::__1::vector"* %this1) #10
  store i64 %call, i64* %__ms, align 8
  %i = load i64, i64* %__new_size.addr, align 8
  %i1 = load i64, i64* %__ms, align 8
  %cmp = icmp ugt i64 %i, %i1
  br i1 %cmp, label %bb, label %bb9

if.then:                                          ; preds = %bb
  %i2 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base_common"*
  call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* %i2) #13
  unreachable

if.end:                                           ; preds = %bb9
  %call2 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this1) #10
  store i64 %call2, i64* %__cap, align 8
  %i3 = load i64, i64* %__cap, align 8
  %i4 = load i64, i64* %__ms, align 8
  %div = udiv i64 %i4, 2
  %cmp3 = icmp uge i64 %i3, %div
  br i1 %cmp3, label %bb10, label %bb11

if.then4:                                         ; preds = %bb10
  %i5 = load i64, i64* %__ms, align 8
  store i64 %i5, i64* %retval, align 8
  br label %return

if.end5:                                          ; preds = %bb11
  %i6 = load i64, i64* %__cap, align 8
  %mul = mul i64 2, %i6
  store i64 %mul, i64* %ref.tmp, align 8
  %call6 = call nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImEERKT_S3_S3_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__new_size.addr)
  %i7 = load i64, i64* %call6, align 8
  store i64 %i7, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %i8 = load i64, i64* %retval, align 8
  ret i64 %i8

bb:                                               ; preds = %entry
  br label %if.then

bb9:                                              ; preds = %entry
  br label %if.end

bb10:                                             ; preds = %if.end
  br label %if.then4

bb11:                                             ; preds = %if.end
  br label %if.end5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_(%"struct.std::__1::__split_buffer"* %this, i64 %__cap, i64 %__start, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %ref.tmp = alloca i8*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  store i64 %__cap, i64* %__cap.addr, align 8
  store i64 %__start, i64* %__start.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %i = bitcast %"struct.std::__1::__split_buffer"* %this1 to %"class.std::__1::__split_buffer_common"*
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 3
  store i8* null, i8** %ref.tmp, align 8
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  call void @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_(%"class.std::__1::__compressed_pair.8"* %__end_cap_, i8** nonnull align 8 dereferenceable(8) %ref.tmp, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1)
  %i2 = load i64, i64* %__cap.addr, align 8
  %cmp = icmp ne i64 %i2, 0
  br i1 %cmp, label %bb, label %bb8

cond.true:                                        ; preds = %bb
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocEv(%"struct.std::__1::__split_buffer"* %this1) #10
  %i3 = load i64, i64* %__cap.addr, align 8
  %call2 = call double* @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, i64 %i3)
  br label %cond.end

cond.false:                                       ; preds = %bb8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call2, %cond.true ], [ null, %cond.false ]
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  store double* %cond, double** %__first_, align 8
  %__first_3 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  %i4 = load double*, double** %__first_3, align 8
  %i5 = load i64, i64* %__start.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %i4, i64 %i5
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 2
  store double* %add.ptr, double** %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 1
  store double* %add.ptr, double** %__begin_, align 8
  %__first_4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  %i6 = load double*, double** %__first_4, align 8
  %i7 = load i64, i64* %__cap.addr, align 8
  %add.ptr5 = getelementptr inbounds double, double* %i6, i64 %i7
  %call6 = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv(%"struct.std::__1::__split_buffer"* %this1) #10
  store double* %add.ptr5, double** %call6, align 8
  ret void

bb:                                               ; preds = %entry
  br label %cond.true

bb8:                                              ; preds = %entry
  br label %cond.false
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE(%"class.std::__1::vector"* %this, %"struct.std::__1::__split_buffer"* nonnull align 8 dereferenceable(40) %__v) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__v.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store %"struct.std::__1::__split_buffer"* %__v, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  call void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteEv(%"class.std::__1::vector"* %this1) #10
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %i) #10
  %i1 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i1, i32 0, i32 0
  %i2 = load double*, double** %__begin_, align 8
  %i3 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i3, i32 0, i32 1
  %i4 = load double*, double** %__end_, align 8
  %i5 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %__begin_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %i5, i32 0, i32 1
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE46__construct_backward_with_exception_guaranteesIdEENS_9enable_ifIXaaooL_ZNS_17integral_constantIbLb1EE5valueEEntsr15__has_constructIS2_PT_S8_EE5valuesr31is_trivially_move_constructibleIS8_EE5valueEvE4typeERS2_S9_S9_RS9_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %i2, double* %i4, double** nonnull align 8 dereferenceable(8) %__begin_2)
  %i6 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_3 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i6, i32 0, i32 0
  %i7 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %__begin_4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %i7, i32 0, i32 1
  call void @_ZNSt3__14swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(double** nonnull align 8 dereferenceable(8) %__begin_3, double** nonnull align 8 dereferenceable(8) %__begin_4) #10
  %i8 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_5 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i8, i32 0, i32 1
  %i9 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %__end_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %i9, i32 0, i32 2
  call void @_ZNSt3__14swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(double** nonnull align 8 dereferenceable(8) %__end_5, double** nonnull align 8 dereferenceable(8) %__end_6) #10
  %i10 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call7 = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv(%"class.std::__1::__vector_base"* %i10) #10
  %i11 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %call8 = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv(%"struct.std::__1::__split_buffer"* %i11) #10
  call void @_ZNSt3__14swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(double** nonnull align 8 dereferenceable(8) %call7, double** nonnull align 8 dereferenceable(8) %call8) #10
  %i12 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %__begin_9 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %i12, i32 0, i32 1
  %i13 = load double*, double** %__begin_9, align 8
  %i14 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %__v.addr, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %i14, i32 0, i32 0
  store double* %i13, double** %__first_, align 8
  %call10 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv(%"class.std::__1::vector"* %this1) #10
  call void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newEm(%"class.std::__1::vector"* %this1, i64 %call10) #10
  call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__invalidate_all_iteratorsEv(%"class.std::__1::vector"* %this1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev(%"struct.std::__1::__split_buffer"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  call void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv(%"struct.std::__1::__split_buffer"* %this1) #10
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  %i = load double*, double** %__first_, align 8
  %tobool = icmp ne double* %i, null
  br i1 %tobool, label %bb, label %bb2

if.then:                                          ; preds = %bb
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocEv(%"struct.std::__1::__split_buffer"* %this1) #10
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  %i1 = load double*, double** %__first_2, align 8
  %call3 = call i64 @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv(%"struct.std::__1::__split_buffer"* %this1)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %i1, i64 %call3) #10
  br label %if.end

if.end:                                           ; preds = %bb2, %invoke.cont
  ret void

bb:                                               ; preds = %entry
  br label %if.then

bb2:                                              ; preds = %entry
  br label %if.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv(%"class.std::__1::vector"* %this) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %i) #10
  %call2 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeERKS2_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call) #10
  store i64 %call2, i64* %ref.tmp, align 8
  %call4 = call i64 @_ZNSt3__114numeric_limitsIlE3maxEv() #10
  store i64 %call4, i64* %ref.tmp3, align 8
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImEERKT_S3_S3_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %ref.tmp3)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  %i1 = load i64, i64* %call5, align 8
  ret i64 %i1
}

; Function Attrs: noreturn
declare dso_local void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImEERKT_S3_S3_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #0 comdat {
entry:
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %i = load i64*, i64** %__a.addr, align 8
  %i1 = load i64*, i64** %__b.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* nonnull align 8 dereferenceable(8) %i, i64* nonnull align 8 dereferenceable(8) %i1)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImEERKT_S3_S3_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #0 comdat {
entry:
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %i = load i64*, i64** %__a.addr, align 8
  %i1 = load i64*, i64** %__b.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* nonnull align 8 dereferenceable(8) %i, i64* nonnull align 8 dereferenceable(8) %i1)
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeERKS2_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp = alloca %"struct.std::__1::__has_max_size", align 1
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %i = bitcast %"struct.std::__1::__has_max_size"* %ref.tmp to %"struct.std::__1::integral_constant"*
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %call = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv(%"class.std::__1::__vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNSt3__114numeric_limitsIlE3maxEv() #1 comdat align 2 {
entry:
  %call = call i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv() #10
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #0 comdat {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %i = load i64*, i64** %__b.addr, align 8
  %i1 = load i64*, i64** %__a.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* %__comp, i64* nonnull align 8 dereferenceable(8) %i, i64* nonnull align 8 dereferenceable(8) %i1)
  br i1 %call, label %bb, label %bb4

cond.true:                                        ; preds = %bb
  %i2 = load i64*, i64** %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %bb4
  %i3 = load i64*, i64** %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi i64* [ %i2, %cond.true ], [ %i3, %cond.false ]
  ret i64* %cond-lvalue

bb:                                               ; preds = %entry
  br label %cond.true

bb4:                                              ; preds = %entry
  br label %cond.false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* %this, i64* nonnull align 8 dereferenceable(8) %__x, i64* nonnull align 8 dereferenceable(8) %__y) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__less"*, align 8
  %__x.addr = alloca i64*, align 8
  %__y.addr = alloca i64*, align 8
  store %"struct.std::__1::__less"* %this, %"struct.std::__1::__less"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i64* %__y, i64** %__y.addr, align 8
  %this1 = load %"struct.std::__1::__less"*, %"struct.std::__1::__less"** %this.addr, align 8
  %i = load i64*, i64** %__x.addr, align 8
  %i1 = load i64, i64* %i, align 8
  %i2 = load i64*, i64** %__y.addr, align 8
  %i3 = load i64, i64* %i2, align 8
  %cmp = icmp ult i64 %i1, %i3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %i = alloca %"struct.std::__1::integral_constant", align 1
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %call = call i64 @_ZNKSt3__19allocatorIdE8max_sizeEv(%"class.std::__1::allocator"* %i1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__19allocatorIdE8max_sizeEv(%"class.std::__1::allocator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %i) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %i = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv() #1 comdat align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #1 comdat {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %i = load i64*, i64** %__a.addr, align 8
  %i1 = load i64*, i64** %__b.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* %__comp, i64* nonnull align 8 dereferenceable(8) %i, i64* nonnull align 8 dereferenceable(8) %i1)
  br i1 %call, label %bb, label %bb4

cond.true:                                        ; preds = %bb
  %i2 = load i64*, i64** %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %bb4
  %i3 = load i64*, i64** %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi i64* [ %i2, %cond.true ], [ %i3, %cond.false ]
  ret i64* %cond-lvalue

bb:                                               ; preds = %entry
  br label %cond.true

bb4:                                              ; preds = %entry
  br label %cond.false
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_(%"class.std::__1::__compressed_pair.8"* %this, i8** nonnull align 8 dereferenceable(8) %__t1, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %__t1.addr = alloca i8**, align 8
  %__t2.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair.8"* %this, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  store i8** %__t1, i8*** %__t1.addr, align 8
  store %"class.std::__1::allocator"* %__t2, %"class.std::__1::allocator"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.8"*, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair.8"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %i1 = load i8**, i8*** %__t1.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %i1) #10
  call void @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* %i, i8** nonnull align 8 dereferenceable(8) %call)
  %i2 = bitcast %"class.std::__1::__compressed_pair.8"* %this1 to i8*
  %i3 = getelementptr inbounds i8, i8* %i2, i64 8
  %i4 = bitcast i8* %i3 to %"struct.std::__1::__compressed_pair_elem.9"*
  %i5 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t2.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardIRNS_9allocatorIdEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i5) #10
  call void @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* %i4, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden double* @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %i1 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZNSt3__19allocatorIdE8allocateEm(%"class.std::__1::allocator"* %i, i64 %i1)
  ret double* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocEv(%"struct.std::__1::__split_buffer"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 3
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair.8"* %__end_cap_) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv(%"struct.std::__1::__split_buffer"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 3
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair.8"* %__end_cap_) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardIRNS_9allocatorIdEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__t) #1 comdat {
entry:
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* %this, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  %__u.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__u, %"class.std::__1::allocator"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.9", %"struct.std::__1::__compressed_pair_elem.9"* %this1, i32 0, i32 0
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__u.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardIRNS_9allocatorIdEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i) #10
  store %"class.std::__1::allocator"* %call, %"class.std::__1::allocator"** %__value_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden double* @_ZNSt3__19allocatorIdE8allocateEm(%"class.std::__1::allocator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %i = load i64, i64* %__n.addr, align 8
  %cmp = icmp ugt i64 %i, 2305843009213693951
  br i1 %cmp, label %bb, label %bb3

if.then:                                          ; preds = %bb
  call void @_ZNSt3__120__throw_length_errorEPKc(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0)) #13
  unreachable

if.end:                                           ; preds = %bb3
  %i1 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %i1, 8
  %call = call i8* @_ZNSt3__117__libcpp_allocateEmm(i64 %mul, i64 8)
  %i2 = bitcast i8* %call to double*
  ret double* %i2

bb:                                               ; preds = %entry
  br label %if.then

bb3:                                              ; preds = %entry
  br label %if.end
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorEPKc(i8* %__msg) #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__msg.addr = alloca i8*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i8* %__msg, i8** %__msg.addr, align 8
  %exception = call i8* @__cxa_allocate_exception(i64 16) #10
  %i = bitcast i8* %exception to %"class.std::length_error"*
  %i1 = load i8*, i8** %__msg.addr, align 8
  call void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %i, i8* %i1)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #13
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden i8* @_ZNSt3__117__libcpp_allocateEmm(i64 %__size, i64 %__align) #0 comdat {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, i64* %__size.addr, align 8
  store i64 %__align, i64* %__align.addr, align 8
  %i = load i64, i64* %__size.addr, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 %i) #14
  ret i8* %call
}

declare dso_local i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline optnone uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %this, i8* %__s) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::length_error"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::length_error"* %this, %"class.std::length_error"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr, align 8
  %i = bitcast %"class.std::length_error"* %this1 to %"class.std::logic_error"*
  %i1 = load i8*, i8** %__s.addr, align 8
  call void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %i, i8* %i1)
  %i2 = bitcast %"class.std::length_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %i2, align 8
  ret void
}

declare dso_local void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #6

declare dso_local void @__cxa_throw(i8*, i8*, i8*)

declare dso_local void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondEv(%"class.std::__1::__compressed_pair.8"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  store %"class.std::__1::__compressed_pair.8"* %this, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.8"*, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair.8"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %i, i64 8
  %i1 = bitcast i8* %add.ptr to %"struct.std::__1::__compressed_pair_elem.9"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %i1) #10
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.9", %"struct.std::__1::__compressed_pair_elem.9"* %this1, i32 0, i32 0
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__value_, align 8
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair.8"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  store %"class.std::__1::__compressed_pair.8"* %this, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.8"*, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair.8"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %i) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE46__construct_backward_with_exception_guaranteesIdEENS_9enable_ifIXaaooL_ZNS_17integral_constantIbLb1EE5valueEEntsr15__has_constructIS2_PT_S8_EE5valuesr31is_trivially_move_constructibleIS8_EE5valueEvE4typeERS2_S9_S9_RS9_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %arg, double* %__begin1, double* %__end1, double** nonnull align 8 dereferenceable(8) %__end2) #1 comdat align 2 {
entry:
  %.addr = alloca %"class.std::__1::allocator"*, align 8
  %__begin1.addr = alloca double*, align 8
  %__end1.addr = alloca double*, align 8
  %__end2.addr = alloca double**, align 8
  %_Np = alloca i64, align 8
  store %"class.std::__1::allocator"* %arg, %"class.std::__1::allocator"** %.addr, align 8
  store double* %__begin1, double** %__begin1.addr, align 8
  store double* %__end1, double** %__end1.addr, align 8
  store double** %__end2, double*** %__end2.addr, align 8
  %i = load double*, double** %__end1.addr, align 8
  %i1 = load double*, double** %__begin1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %i to i64
  %sub.ptr.rhs.cast = ptrtoint double* %i1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Np, align 8
  %i2 = load i64, i64* %_Np, align 8
  %i3 = load double**, double*** %__end2.addr, align 8
  %i4 = load double*, double** %i3, align 8
  %idx.neg = sub i64 0, %i2
  %add.ptr = getelementptr inbounds double, double* %i4, i64 %idx.neg
  store double* %add.ptr, double** %i3, align 8
  %i5 = load i64, i64* %_Np, align 8
  %cmp = icmp sgt i64 %i5, 0
  br i1 %cmp, label %bb, label %bb12

if.then:                                          ; preds = %bb
  %i6 = load double**, double*** %__end2.addr, align 8
  %i7 = load double*, double** %i6, align 8
  %i8 = bitcast double* %i7 to i8*
  %i9 = load double*, double** %__begin1.addr, align 8
  %i10 = bitcast double* %i9 to i8*
  %i11 = load i64, i64* %_Np, align 8
  %mul = mul i64 %i11, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %i8, i8* align 8 %i10, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %bb12, %if.then
  ret void

bb:                                               ; preds = %entry
  br label %if.then

bb12:                                             ; preds = %entry
  br label %if.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__14swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(double** nonnull align 8 dereferenceable(8) %__x, double** nonnull align 8 dereferenceable(8) %__y) #1 comdat {
entry:
  %__x.addr = alloca double**, align 8
  %__y.addr = alloca double**, align 8
  %__t = alloca double*, align 8
  store double** %__x, double*** %__x.addr, align 8
  store double** %__y, double*** %__y.addr, align 8
  %i = load double**, double*** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__14moveIRPdEEONS_16remove_referenceIT_E4typeEOS4_(double** nonnull align 8 dereferenceable(8) %i) #10
  %i1 = load double*, double** %call, align 8
  store double* %i1, double** %__t, align 8
  %i2 = load double**, double*** %__y.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__14moveIRPdEEONS_16remove_referenceIT_E4typeEOS4_(double** nonnull align 8 dereferenceable(8) %i2) #10
  %i3 = load double*, double** %call1, align 8
  %i4 = load double**, double*** %__x.addr, align 8
  store double* %i3, double** %i4, align 8
  %call2 = call nonnull align 8 dereferenceable(8) double** @_ZNSt3__14moveIRPdEEONS_16remove_referenceIT_E4typeEOS4_(double** nonnull align 8 dereferenceable(8) %__t) #10
  %i5 = load double*, double** %call2, align 8
  %i6 = load double**, double*** %__y.addr, align 8
  store double* %i5, double** %i6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newEm(%"class.std::__1::vector"* %this, i64 %__current_size) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__current_size.addr = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store i64 %__current_size, i64* %__current_size.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %call = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %i = bitcast double* %call to i8*
  %call2 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %call3 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this1) #10
  %add.ptr = getelementptr inbounds double, double* %call2, i64 %call3
  %i1 = bitcast double* %add.ptr to i8*
  %call4 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %call5 = call i64 @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv(%"class.std::__1::vector"* %this1) #10
  %add.ptr6 = getelementptr inbounds double, double* %call4, i64 %call5
  %i2 = bitcast double* %add.ptr6 to i8*
  %call7 = call double* @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataEv(%"class.std::__1::vector"* %this1) #10
  %i3 = load i64, i64* %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds double, double* %call7, i64 %i3
  %i4 = bitcast double* %add.ptr8 to i8*
  call void @_ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerEPKvS5_S5_S5_(%"class.std::__1::vector"* %this1, i8* %i, i8* %i1, i8* %i2, i8* %i4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__invalidate_all_iteratorsEv(%"class.std::__1::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNSt3__14moveIRPdEEONS_16remove_referenceIT_E4typeEOS4_(double** nonnull align 8 dereferenceable(8) %__t) #1 comdat {
entry:
  %__t.addr = alloca double**, align 8
  store double** %__t, double*** %__t.addr, align 8
  %i = load double**, double*** %__t.addr, align 8
  ret double** %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv(%"struct.std::__1::__split_buffer"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 1
  %i = load double*, double** %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd(%"struct.std::__1::__split_buffer"* %this1, double* %i) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv(%"struct.std::__1::__split_buffer"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv(%"struct.std::__1::__split_buffer"* %this1) #10
  %i = load double*, double** %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 0
  %i1 = load double*, double** %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %i to i64
  %sub.ptr.rhs.cast = ptrtoint double* %i1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd(%"struct.std::__1::__split_buffer"* %this, double* %__new_last) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  %__new_last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant.10", align 1
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  store double* %__new_last, double** %__new_last.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %i = load double*, double** %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE(%"struct.std::__1::__split_buffer"* %this1, double* %i) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE(%"struct.std::__1::__split_buffer"* %this, double* %__new_last) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %i = alloca %"struct.std::__1::integral_constant.10", align 1
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  %__new_last.addr = alloca double*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  store double* %__new_last, double** %__new_last.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %i1 = load double*, double** %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 2
  %i2 = load double*, double** %__end_, align 8
  %cmp = icmp ne double* %i1, %i2
  br i1 %cmp, label %bb, label %bb4

while.body:                                       ; preds = %bb
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocEv(%"struct.std::__1::__split_buffer"* %this1) #10
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 2
  %i3 = load double*, double** %__end_2, align 8
  %incdec.ptr = getelementptr inbounds double, double* %i3, i32 -1
  store double* %incdec.ptr, double** %__end_2, align 8
  %call3 = call double* @_ZNSt3__112__to_addressIdEEPT_S2_(double* %incdec.ptr) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyIdEEvRS2_PT_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call, double* %call3)
  br label %invoke.cont

invoke.cont:                                      ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %bb4
  ret void

bb:                                               ; preds = %while.cond
  br label %while.body

bb4:                                              ; preds = %while.cond
  br label %while.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv(%"struct.std::__1::__split_buffer"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %this1, i32 0, i32 3
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair.8"* %__end_cap_) #10
  ret double** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) double** @_ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv(%"class.std::__1::__compressed_pair.8"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  store %"class.std::__1::__compressed_pair.8"* %this, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.8"*, %"class.std::__1::__compressed_pair.8"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair.8"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(8) double** @_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %i) #10
  ret double** %call
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
