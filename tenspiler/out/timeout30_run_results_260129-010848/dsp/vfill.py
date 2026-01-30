# Benchmark vfill in suite dsp failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/c2taco/cpp/for_synthesis/dsp/vfill_.cc:  tenspiler/c2taco/cpp/for_synthesis/dsp/vfill_.cc
Source code: #include <vector>

using namespace std;

vector<int> vfill(vector<int> arr, int v) {
    vector<int> S;
    int n = arr.size();
    for (int i = 0; i < n; ++i) {
        S.push_back(v);
    }
    return S;
}
Reading file tenspiler/c2taco/cpp/for_synthesis/dsp/vfill_.cc:  tenspiler/c2taco/cpp/for_synthesis/dsp/vfill_.cc
Source code: #include <vector>

using namespace std;

vector<int> vfill(vector<int> arr, int v) {
    vector<int> S;
    int n = arr.size();
    for (int i = 0; i < n; ++i) {
        S.push_back(v);
    }
    return S;
}
Push statement: S.push_back(v)
name: for.cond<header><exiting>
name: bb
name: for.body
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'invoke.cont'], exits: ['for.cond'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector"* %arr) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/c2taco/auto/driver/dsp/vfill_driver.py", line 15, in <module>
    vfill(arr, v)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 971, in get_outer_loop_inv
    type_expr_tree = build_type_expression_tree(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 461, in build_type_expression_tree
    return helper(compute_node, target_type)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 336, in helper
    if node.type == "assignment_expression":
AttributeError: 'NoneType' object has no attribute 'type'

