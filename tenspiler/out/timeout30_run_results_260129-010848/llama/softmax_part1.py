# Benchmark softmax_part1 in suite llama failed to run.
# Return code: 1
# Stdout:
name: for.cond<header><exiting>
name: for.body
name: if.then
name: if.end
name: for.inc<latch>
found loop: header: for.cond, body: ['for.body', 'if.then', 'if.end'], exits: ['for.cond'], latches: ['for.inc']
  %max_pos.addr = alloca i32, align 4
  %max_val = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %max_pos, i32* %max_pos.addr, align 4
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %input, i64 0) #1
  %i1 = load i32, i32* %call, align 4
  store i32 %i1, i32* %max_val, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond
  %i2 = load i32, i32* %i, align 4
  %i3 = load i32, i32* %max_pos.addr, align 4
  %cmp = icmp slt i32 %i2, %i3
  br i1 %cmp, label %for.body, label %for.end
  %i4 = load i32, i32* %i, align 4
  %conv = sext i32 %i4 to i64
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %input, i64 %conv) #1
  %i5 = load i32, i32* %call1, align 4
  %i6 = load i32, i32* %max_val, align 4
  %cmp2 = icmp sgt i32 %i5, %i6
  br i1 %cmp2, label %if.then, label %if.end
  %i7 = load i32, i32* %i, align 4
  %conv3 = sext i32 %i7 to i64
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm(%"class.std::__1::vector"* %input, i64 %conv3) #1
  %i8 = load i32, i32* %call4, align 4
  store i32 %i8, i32* %max_val, align 4
  br label %if.end
  br label %for.inc
  %i9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %i9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond
  %i10 = load i32, i32* %max_val, align 4
  ret i32 %i10
ps: (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (softmax_part1_ps:Bool input max_pos max_val))
Starting synthesis at list bound 2
Trying strict grammar with list bound 2...
asserts: [(Implies:Bool (And:Bool (And:Bool (Gt:Bool (list_length:Int input) (Lit:Int 0)) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool (Lit:Int 1) input max_pos (list_get:Int input (Lit:Int 0)))), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool i max_pos) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Gt:Bool (list_get:Int input i) max_val) (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val))) (softmax_part1_inv0:Bool (Add:Int i (Lit:Int 1)) input max_pos (Ite:Int (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Gt:Bool (list_get:Int input i) max_val) (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (list_get:Int input i) max_val))), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (softmax_part1_ps:Bool input max_pos max_val))]
Strict grammar with list bound 2 failed
Trying relaxed grammar...
asserts: [(Implies:Bool (And:Bool (And:Bool (Gt:Bool (list_length:Int input) (Lit:Int 0)) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool (Lit:Int 1) input max_pos (list_get:Int input (Lit:Int 0)))), (Implies:Bool (Or:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Lt:Bool i max_pos) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Gt:Bool (list_get:Int input i) max_val) (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val))) (softmax_part1_inv0:Bool (Add:Int i (Lit:Int 1)) input max_pos (Ite:Int (And:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Gt:Bool (list_get:Int input i) max_val) (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (list_get:Int input i) max_val))), (Implies:Bool (And:Bool (And:Bool (And:Bool (And:Bool (Not:Bool (Lt:Bool i max_pos)) (Gt:Bool (list_length:Int input) (Lit:Int 0))) (Le:Bool max_pos (list_length:Int input))) (Ge:Bool max_pos (Lit:Int 1))) (softmax_part1_inv0:Bool i input max_pos max_val)) (softmax_part1_ps:Bool input max_pos max_val))]
====== verification of round 0 solution ======
Synthesized PS and INV Candidates

def softmax_part1_inv0(i input max_pos max_val)
i >= 1 and i <= max_pos and max_val == reduce_max(vec_slice(input, 0, i))



def softmax_part1_ps(input max_pos softmax_part1_rv)
softmax_part1_rv == reduce_max(vec_slice(input, 0, max_pos))



Verification Output: SAT/UNKNOWN
verification failed (FnDeclRecursive:Function  softmax_part1_inv0 (And:Bool (And:Bool (Ge:Bool i (Lit:Int 1)) (Le:Bool i max_pos)) (Eq:Bool max_val (reduce_max:Int (vec_slice:List Int input (Lit:Int 0) i)))) i input max_pos max_val)

(FnDeclRecursive:Function  softmax_part1_ps (Eq:Bool softmax_part1_rv (reduce_max:Int (vec_slice:List Int input (Lit:Int 0) max_pos))) input max_pos softmax_part1_rv)


Proceeding to verifying the next solution

# Stderr:
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/llama/holing/driver/softmax/softmax_part1_driver.py", line 74, in <module>
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

