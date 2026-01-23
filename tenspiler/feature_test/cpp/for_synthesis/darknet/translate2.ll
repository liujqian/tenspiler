; ModuleID = './for_synthesis/darknet/translate2.ll'
source_filename = "./for_synthesis/darknet/translate2.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { i32*, i32*, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { i32* }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__vector_base_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }

$_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEEC2EOS3_ = comdat any

$_ZNSt3__14moveIRNS_9allocatorIiEEEEONS_16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv = comdat any

$_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_ = comdat any

$_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv = comdat any

$_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv = comdat any

$_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv = comdat any

$_ZNSt3__120__vector_base_commonILb1EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_ = comdat any

$_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE = comdat any

$_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_ = comdat any

$_ZNSt3__17forwardINS_9allocatorIiEEEEOT_RNS_16remove_referenceIS3_E4typeE = comdat any

$_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2IS2_vEEOT_ = comdat any

$_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv = comdat any

$_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv = comdat any

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z10translate2NSt3__16vectorIiNS_9allocatorIiEEEEiiS3_(%"class.std::__1::vector"* noalias sret align 8 %agg.result, %"class.std::__1::vector"* %a, i32 %n, i32 %s, %"class.std::__1::vector"* %b) #0 {
entry:
  %result.ptr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i2 = load i32, i32* %i, align 4
  %i3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %i2, %i3
  br i1 %cmp, label %bb, label %bb9

for.body:                                         ; preds = %bb
  %i4 = load i32, i32* %i, align 4
  %conv = sext i32 %i4 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %a, i64 %conv) #3
  %i5 = load i32, i32* %call, align 4
  %i6 = load i32, i32* %s.addr, align 4
  %add = add nsw i32 %i5, %i6
  %i7 = load i32, i32* %i, align 4
  %conv1 = sext i32 %i7 to i64
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %b, i64 %conv1) #3
  store i32 %add, i32* %call2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %i8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %i8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %bb9
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2EOS3_(%"class.std::__1::vector"* %agg.result, %"class.std::__1::vector"* nonnull align 8 dereferenceable(24) %b) #3
  ret void

bb:                                               ; preds = %for.cond
  br label %for.body

bb9:                                              ; preds = %for.cond
  br label %for.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i, i32 0, i32 0
  %i1 = load i32*, i32** %__begin_, align 8
  %i2 = load i64, i64* %__n.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %i1, i64 %i2
  ret i32* %arrayidx
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2EOS3_(%"class.std::__1::vector"* %this, %"class.std::__1::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__x.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store %"class.std::__1::vector"* %__x, %"class.std::__1::vector"** %__x.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %i1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i2 = bitcast %"class.std::__1::vector"* %i1 to %"class.std::__1::__vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv(%"class.std::__1::__vector_base"* %i2) #3
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__14moveIRNS_9allocatorIiEEEEONS_16remove_referenceIT_E4typeEOS5_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call) #3
  call void @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_(%"class.std::__1::__vector_base"* %i, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call2) #3
  %i3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i4 = bitcast %"class.std::__1::vector"* %i3 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i4, i32 0, i32 0
  %i5 = load i32*, i32** %__begin_, align 8
  %i6 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_3 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i6, i32 0, i32 0
  store i32* %i5, i32** %__begin_3, align 8
  %i7 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i8 = bitcast %"class.std::__1::vector"* %i7 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i8, i32 0, i32 1
  %i9 = load i32*, i32** %__end_, align 8
  %i10 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_4 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i10, i32 0, i32 1
  store i32* %i9, i32** %__end_4, align 8
  %i11 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i12 = bitcast %"class.std::__1::vector"* %i11 to %"class.std::__1::__vector_base"*
  %call5 = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv(%"class.std::__1::__vector_base"* %i12) #3
  %i13 = load i32*, i32** %call5, align 8
  %i14 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %call6 = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv(%"class.std::__1::__vector_base"* %i14) #3
  store i32* %i13, i32** %call6, align 8
  %i15 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i16 = bitcast %"class.std::__1::vector"* %i15 to %"class.std::__1::__vector_base"*
  %call7 = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv(%"class.std::__1::__vector_base"* %i16) #3
  store i32* null, i32** %call7, align 8
  %i17 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i18 = bitcast %"class.std::__1::vector"* %i17 to %"class.std::__1::__vector_base"*
  %__end_8 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i18, i32 0, i32 1
  store i32* null, i32** %__end_8, align 8
  %i19 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %i20 = bitcast %"class.std::__1::vector"* %i19 to %"class.std::__1::__vector_base"*
  %__begin_9 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i20, i32 0, i32 0
  store i32* null, i32** %__begin_9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__14moveIRNS_9allocatorIiEEEEONS_16remove_referenceIT_E4typeEOS5_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv(%"class.std::__1::__vector_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #3
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_(%"class.std::__1::__vector_base"* %this, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %ref.tmp = alloca i8*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__vector_base"* %this1 to %"class.std::__1::__vector_base_common"*
  call void @_ZNSt3__120__vector_base_commonILb1EEC2Ev(%"class.std::__1::__vector_base_common"* %i)
  br label %invoke.cont

invoke.cont:                                      ; preds = %entry
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  store i32* null, i32** %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 1
  store i32* null, i32** %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  store i8* null, i8** %ref.tmp, align 8
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__14moveIRNS_9allocatorIiEEEEONS_16remove_referenceIT_E4typeEOS5_(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1) #3
  call void @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__end_cap_, i8** nonnull align 8 dereferenceable(8) %ref.tmp, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call)
  br label %invoke.cont2

invoke.cont2:                                     ; preds = %invoke.cont
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i32** @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv(%"class.std::__1::__vector_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 2
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv(%"class.std::__1::__compressed_pair"* %__end_cap_) #3
  ret i32** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv(%"class.std::__1::__compressed_pair"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %i) #3
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %i = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZNSt3__120__vector_base_commonILb1EEC2Ev(%"class.std::__1::__vector_base_common"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__vector_base_common"*, align 8
  store %"class.std::__1::__vector_base_common"* %this, %"class.std::__1::__vector_base_common"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base_common"*, %"class.std::__1::__vector_base_common"** %this.addr, align 8
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %arg) #1 comdat {
bb:
  %i = call i8* @__cxa_begin_catch(i8* %arg) #3
  call void @_ZSt9terminatev() #4
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %this, i8** nonnull align 8 dereferenceable(8) %__t1, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca i8**, align 8
  %__t2.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store i8** %__t1, i8*** %__t1.addr, align 8
  store %"class.std::__1::allocator"* %__t2, %"class.std::__1::allocator"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %i1 = load i8**, i8*** %__t1.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %i1) #3
  call void @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* %i, i8** nonnull align 8 dereferenceable(8) %call)
  %i2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %i3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t2.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardINS_9allocatorIiEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i3) #3
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.0"* %i2, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca i8**, align 8
  store i8** %__t, i8*** %__t.addr, align 8
  %i = load i8**, i8*** %__t.addr, align 8
  ret i8** %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* %this, i8** nonnull align 8 dereferenceable(8) %__u) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  %__u.addr = alloca i8**, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  store i8** %__u, i8*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %i = load i8**, i8*** %__u.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** nonnull align 8 dereferenceable(8) %i) #3
  store i32* null, i32** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardINS_9allocatorIiEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  ret %"class.std::__1::allocator"* %i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.0"* %this, %"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %__u) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  %__u.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__u, %"class.std::__1::allocator"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %i = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  %i1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__u.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__17forwardINS_9allocatorIiEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::allocator"* nonnull align 1 dereferenceable(1) %i1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i32** @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv(%"class.std::__1::__compressed_pair"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %i = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %i) #3
  ret i32** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(8) i32** @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret i32** %__value_
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noreturn nounwind }
attributes #2 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
