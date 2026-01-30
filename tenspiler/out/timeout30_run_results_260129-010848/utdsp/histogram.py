# Benchmark histogram in suite utdsp failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/c2taco/cpp/for_synthesis/utdsp/histogram_.cc:  tenspiler/c2taco/cpp/for_synthesis/utdsp/histogram_.cc
Source code: #include <vector>
using namespace std;

vector<int> histogram(int N) {
    vector<int> vec;
    for (int i = 0; i < N; ++i) {
        vec.push_back(0);
    }
    return vec;
}
Reading file tenspiler/c2taco/cpp/for_synthesis/utdsp/histogram_.cc:  tenspiler/c2taco/cpp/for_synthesis/utdsp/histogram_.cc
Source code: #include <vector>
using namespace std;

vector<int> histogram(int N) {
    vector<int> vec;
    for (int i = 0; i < N; ++i) {
        vec.push_back(0);
    }
    return vec;
}
Push statement: vec.push_back(0)
name: for.cond<header><exiting>
name: bb
name: for.body
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'invoke.cont'], exits: ['for.cond'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond
  %i2 = load i32, i32* %i, align 4
  %i3 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %i2, %i3
  br i1 %cmp, label %bb, label %bb5
  br label %for.body
  br label %for.end
  store i32 0, i32* %ref.tmp, align 4
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi(%"class.std::__1::vector"* %agg.result, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  br label %invoke.cont
  br label %for.inc
  %i4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %i4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %bb6, label %bb7
  br label %nrvo.skipdtor
  br label %nrvo.unused
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev(%"class.std::__1::vector"* %agg.result) #10
  br label %nrvo.skipdtor
  ret void
ps: (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp)) (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp))) (histogram_ps:Bool N agg.result))
Starting synthesis at list bound 2
Trying strict grammar with list bound 2...
asserts: [(Implies:Bool (Ge:Bool N (Lit:Int 1)) (histogram_inv0:Bool N (list_empty:List Int ) (Lit:Int 0) (Lit:Int 0))), (Implies:Bool (And:Bool (And:Bool (Lt:Bool i N) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp)) (histogram_inv0:Bool N (list_append:List List Int agg.result (Lit:Int 0)) (Add:Int i (Lit:Int 1)) (Lit:Int 0))), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp)) (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp))) (histogram_ps:Bool N agg.result))]
Strict grammar with list bound 2 failed
Trying relaxed grammar...
asserts: [(Implies:Bool (Ge:Bool N (Lit:Int 1)) (histogram_inv0:Bool N (list_empty:List Int ) (Lit:Int 0) (Lit:Int 0))), (Implies:Bool (And:Bool (And:Bool (Lt:Bool i N) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp)) (histogram_inv0:Bool N (list_append:List List Int agg.result (Lit:Int 0)) (Add:Int i (Lit:Int 1)) (Lit:Int 0))), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lit:Bool True)) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp)) (And:Bool (And:Bool (And:Bool (Lit:Bool True) (Not:Bool (Lt:Bool i N))) (Ge:Bool N (Lit:Int 1))) (histogram_inv0:Bool N agg.result i ref.tmp))) (histogram_ps:Bool N agg.result))]

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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/c2taco/auto/driver/utdsp/histogram_driver.py", line 16, in <module>
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

