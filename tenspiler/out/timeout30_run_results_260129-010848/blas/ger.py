# Benchmark ger in suite blas failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/c2taco/cpp/for_synthesis/blas/ger_.cc:  tenspiler/c2taco/cpp/for_synthesis/blas/ger_.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> ger(int M, int N, vector<int> x, vector<int> y, vector<vector<int>> A) {
    vector<vector<int>> updatedA;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(A[i][j] + x[i] * y[j]);
        }
        updatedA.push_back(row);
    }
    return updatedA;
}
Reading file tenspiler/c2taco/cpp/for_synthesis/blas/ger_.cc:  tenspiler/c2taco/cpp/for_synthesis/blas/ger_.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> ger(int M, int N, vector<int> x, vector<int> y, vector<vector<int>> A) {
    vector<vector<int>> updatedA;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(A[i][j] + x[i] * y[j]);
        }
        updatedA.push_back(row);
    }
    return updatedA;
}
Push statement: row.push_back(A[i][j] + x[i] * y[j])
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb17
name: for.end
name: invoke.cont10
name: for.inc11<latch>
name: bb16
name: for.body3
name: invoke.cont
name: for.inc
name: for.cond1<header><exiting>
name: bb16
name: for.body3
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb17', 'for.end', 'invoke.cont10', 'bb16', 'for.body3', 'invoke.cont', 'for.inc'], exits: ['for.cond'], latches: ['for.inc11']
found loop: header: for.cond1, body: ['bb16', 'for.body3', 'invoke.cont'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %row = alloca %"class.std::__1::vector.0", align 8
  %j = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond
  %i2 = load i32, i32* %i, align 4
  %i3 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %i2, %i3
  br i1 %cmp, label %bb, label %bb15
  br label %for.body
  br label %for.end13
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector.0"* %row) #10
  store i32 0, i32* %j, align 4
  br label %for.cond1
  %i4 = load i32, i32* %j, align 4
  %i5 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %i4, %i5
  br i1 %cmp2, label %bb16, label %bb17
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %bb18, label %bb19
  br label %for.body3
  br label %for.end
  br label %nrvo.skipdtor
  br label %nrvo.unused
  %i6 = load i32, i32* %i, align 4
  %conv = sext i32 %i6 to i64
  %call = call nonnull align 8 dereferenceable(24) %"class.std::__1::vector.0"* @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm(%"class.std::__1::vector"* %A, i64 %conv) #10
  %i7 = load i32, i32* %j, align 4
  %conv4 = sext i32 %i7 to i64
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector.0"* %call, i64 %conv4) #10
  %i8 = load i32, i32* %call5, align 4
  %i9 = load i32, i32* %i, align 4
  %conv6 = sext i32 %i9 to i64
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector.0"* %x, i64 %conv6) #10
  %i10 = load i32, i32* %call7, align 4
  %i11 = load i32, i32* %j, align 4
  %conv8 = sext i32 %i11 to i64
  %call9 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector.0"* %y, i64 %conv8) #10
  %i12 = load i32, i32* %call9, align 4
  %mul = mul nsw i32 %i10, %i12
  %add = add nsw i32 %i8, %mul
  store i32 %add, i32* %ref.tmp, align 4
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi(%"class.std::__1::vector.0"* %row, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  br label %invoke.cont
  br label %for.inc
  %i13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %i13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backERKS3_(%"class.std::__1::vector"* %agg.result, %"class.std::__1::vector.0"* nonnull align 8 dereferenceable(24) %row)
  br label %invoke.cont10
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev(%"class.std::__1::vector.0"* %row) #10
  br label %for.inc11
  %i14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %i14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED2Ev(%"class.std::__1::vector"* %agg.result) #10
  br label %nrvo.skipdtor
  ret void
ps: (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y))) (ger_ps:Bool M N x y A agg.result))
Starting synthesis at list bound 2
Trying strict grammar with list bound 2...
asserts: [(Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Ge:Bool M (Lit:Int 1)) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N (matrix_empty:List Int ) (Lit:Int 0) (Lit:Int 0) (Lit:Int 0) (list_empty:List Int ) x y)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool i M) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N (Lit:Int 0) ref.tmp (list_empty:List Int ) x y agg.result i)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool j N) (Lt:Bool i M)) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N j ref.tmp row x y agg.result i)) (ger_inv1:Bool A M N (Add:Int j (Lit:Int 1)) (Add:Int (list_get:Int (matrix_get:List Int A i) j) (Mul:Int (list_get:Int x i) (list_get:Int y j))) (list_append:List List Int row (Add:Int (list_get:Int (matrix_get:List Int A i) j) (Mul:Int (list_get:Int x i) (list_get:Int y j)))) x y agg.result i)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lt:Bool j N)) (Lt:Bool i M)) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N j ref.tmp row x y agg.result i)) (ger_inv0:Bool A M N (matrix_append:List List Int agg.result row) (Add:Int i (Lit:Int 1)) j ref.tmp row x y)), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y))) (ger_ps:Bool M N x y A agg.result))]
Strict grammar with list bound 2 failed
Trying relaxed grammar...
asserts: [(Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Ge:Bool M (Lit:Int 1)) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N (matrix_empty:List Int ) (Lit:Int 0) (Lit:Int 0) (Lit:Int 0) (list_empty:List Int ) x y)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool i M) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N (Lit:Int 0) ref.tmp (list_empty:List Int ) x y agg.result i)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool j N) (Lt:Bool i M)) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N j ref.tmp row x y agg.result i)) (ger_inv1:Bool A M N (Add:Int j (Lit:Int 1)) (Add:Int (list_get:Int (matrix_get:List Int A i) j) (Mul:Int (list_get:Int x i) (list_get:Int y j))) (list_append:List List Int row (Add:Int (list_get:Int (matrix_get:List Int A i) j) (Mul:Int (list_get:Int x i) (list_get:Int y j)))) x y agg.result i)), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lt:Bool j N)) (Lt:Bool i M)) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (ger_inv1:Bool A M N j ref.tmp row x y agg.result i)) (ger_inv0:Bool A M N (matrix_append:List List Int agg.result row) (Add:Int i (Lit:Int 1)) j ref.tmp row x y)), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y)) (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i M))) (Ge:Bool M (Lit:Int 1))) (Ge:Bool N (Lit:Int 1))) (Gt:Bool (list_length:Int x) (Lit:Int 0))) (Ge:Bool (list_length:Int x) M)) (Gt:Bool (list_length:Int y) (Lit:Int 0))) (Ge:Bool (list_length:Int y) N)) (Gt:Bool (matrix_length:Int A) (Lit:Int 0))) (Ge:Bool (matrix_length:Int A) M)) (Gt:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) (Lit:Int 0))) (Ge:Bool (list_length:Int (matrix_get:List Int A (Lit:Int 0))) N)) (ger_inv0:Bool A M N agg.result i j ref.tmp row x y))) (ger_ps:Bool M N x y A agg.result))]

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/utils/synthesis_utils.py", line 51, in run_synthesis_with_bound
    driver.synthesize(
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1619, in synthesize
    synthesized: List[FnDeclRecursive] = run_synthesis(
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/synthesize_rosette.py", line 679, in synthesize
    raise SynthesisFailed("Synthesis failed")
metalift.synthesis_common.SynthesisFailed: Synthesis failed

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/c2taco/auto/driver/blas/ger_driver.py", line 25, in <module>
    run_synthesis_algorithm(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/utils/synthesis_utils.py", line 139, in run_synthesis_algorithm
    raise e
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/utils/synthesis_utils.py", line 126, in run_synthesis_algorithm
    run_synthesis_with_bound(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/utils/synthesis_utils.py", line 67, in run_synthesis_with_bound
    driver.synthesize(
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1619, in synthesize
    synthesized: List[FnDeclRecursive] = run_synthesis(
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/synthesize_rosette.py", line 679, in synthesize
    raise SynthesisFailed("Synthesis failed")
metalift.synthesis_common.SynthesisFailed: Synthesis failed

