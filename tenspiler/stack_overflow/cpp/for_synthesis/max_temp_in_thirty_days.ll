; ModuleID = '/code/tenspiler/tenspiler/c2taco/cpp/for_synthesis/stackoverflow/max_temp_in_thirty_days.ll'
source_filename = "/code/tenspiler/tenspiler/c2taco/cpp/for_synthesis/stackoverflow/max_temp_in_thirty_days.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { i32*, i32*, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { i32* }

$_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm = comdat any

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Z23max_temp_in_thirty_daysNSt3__16vectorIiNS_9allocatorIiEEEES3_(%"class.std::__1::vector"* %data, %"class.std::__1::vector"* %periods) #0 {
entry:
  %maxtemp = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -10000, i32* %maxtemp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i1 = load i32, i32* %i, align 4
  %conv = sext i32 %i1 to i64
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector"* %periods) #1
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %bb, label %bb13

for.body:                                         ; preds = %bb
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %i2, 30
  br i1 %cmp2, label %bb14, label %bb15

for.body3:                                        ; preds = %bb14
  %i3 = load i32, i32* %temp, align 4
  %i4 = load i32, i32* %i, align 4
  %i5 = load i32, i32* %j, align 4
  %add = add nsw i32 %i4, %i5
  %conv4 = sext i32 %add to i64
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %data, i64 %conv4) #1
  %i6 = load i32, i32* %call5, align 4
  %add6 = add nsw i32 %i3, %i6
  store i32 %add6, i32* %temp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %i7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %i7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %bb15
  %i8 = load i32, i32* %temp, align 4
  %i9 = load i32, i32* %maxtemp, align 4
  %cmp7 = icmp sgt i32 %i8, %i9
  br i1 %cmp7, label %bb16, label %bb17

if.then:                                          ; preds = %bb16
  %i10 = load i32, i32* %temp, align 4
  store i32 %i10, i32* %maxtemp, align 4
  br label %if.end

if.end:                                           ; preds = %bb17, %if.then
  br label %for.inc8

for.inc8:                                         ; preds = %if.end
  %i11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %i11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end10:                                        ; preds = %bb13
  %i12 = load i32, i32* %maxtemp, align 4
  ret i32 %i12

bb:                                               ; preds = %for.cond
  br label %for.body

bb13:                                             ; preds = %for.cond
  br label %for.end10

bb14:                                             ; preds = %for.cond1
  br label %for.body3

bb15:                                             ; preds = %for.cond1
  br label %for.end

bb16:                                             ; preds = %for.end
  br label %if.then

bb17:                                             ; preds = %for.end
  br label %if.end
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %i = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i, i32 0, i32 1
  %i1 = load i32*, i32** %__end_, align 8
  %i2 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %i2, i32 0, i32 0
  %i3 = load i32*, i32** %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %i1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %i3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
