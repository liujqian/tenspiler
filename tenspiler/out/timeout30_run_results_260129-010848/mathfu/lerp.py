# Benchmark lerp in suite mathfu failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/c2taco/cpp/for_synthesis/mathfu/lerp_.cc:  tenspiler/c2taco/cpp/for_synthesis/mathfu/lerp_.cc
Source code: #include <vector>
using namespace std;

vector<int> lerp(int N, vector<int> a, vector<int> b, int t) {
    vector<int> result;
    for (int i = 0; i < N; ++i) {
        int interp = t * a[i] + (1 - t) * b[i];
        result.push_back(interp);
    }
    return result;
}
Reading file tenspiler/c2taco/cpp/for_synthesis/mathfu/lerp_.cc:  tenspiler/c2taco/cpp/for_synthesis/mathfu/lerp_.cc
Source code: #include <vector>
using namespace std;

vector<int> lerp(int N, vector<int> a, vector<int> b, int t) {
    vector<int> result;
    for (int i = 0; i < N; ++i) {
        int interp = t * a[i] + (1 - t) * b[i];
        result.push_back(interp);
    }
    return result;
}
Push statement: result.push_back(interp)
name: for.cond<header><exiting>
name: bb
name: for.body
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'invoke.cont'], exits: ['for.cond'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %interp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/c2taco/auto/driver/mathfu/lerp_driver.py", line 19, in <module>
    lerp(N, a, b, t)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1756, in __call__
    v.visit_llvm_block(b)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1259, in visit_llvm_block
    inv.call(blk_state),
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 800, in call
    self.gen_synth(relaxed_grammar=False)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 809, in gen_synth
    body = self.grammar(self.writes, self.reads, self.in_scope, relaxed_grammar).src
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1138, in inv_grammar
    return get_outer_loop_inv(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1024, in get_outer_loop_inv
    obj_expr_tree = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 533, in preorder_traversal_with_objs
    right_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 530, in preorder_traversal_with_objs
    left_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 565, in preorder_traversal_with_objs
    function = getattr(tenspiler_common, call_obj.src.name())
AttributeError: 'NoneType' object has no attribute 'src'

