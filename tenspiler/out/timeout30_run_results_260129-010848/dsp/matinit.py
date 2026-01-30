# Benchmark matinit in suite dsp failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/c2taco/cpp/for_synthesis/dsp/matinit_.cc:  tenspiler/c2taco/cpp/for_synthesis/dsp/matinit_.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> matinit(int M, int N, int val) {
    vector<vector<int>> A;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(val);
        }
        A.push_back(row);
    }
    return A;
}
Reading file tenspiler/c2taco/cpp/for_synthesis/dsp/matinit_.cc:  tenspiler/c2taco/cpp/for_synthesis/dsp/matinit_.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> matinit(int M, int N, int val) {
    vector<vector<int>> A;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(val);
        }
        A.push_back(row);
    }
    return A;
}
Push statement: row.push_back(val)
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb10
name: for.end
name: invoke.cont4
name: for.inc5<latch>
name: bb9
name: for.body3
name: invoke.cont
name: for.inc
name: for.cond1<header><exiting>
name: bb9
name: for.body3
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb10', 'for.end', 'invoke.cont4', 'bb9', 'for.body3', 'invoke.cont', 'for.inc'], exits: ['for.cond'], latches: ['for.inc5']
found loop: header: for.cond1, body: ['bb9', 'for.body3', 'invoke.cont'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %row = alloca %"class.std::__1::vector.0", align 8
  %j = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/c2taco/auto/driver/dsp/matinit_driver.py", line 16, in <module>
    matinit(M, N, val)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1756, in __call__
    v.visit_llvm_block(b)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 1259, in visit_llvm_block
    inv.call(blk_state),
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 800, in call
    self.gen_synth(relaxed_grammar=False)
  File "/home/liujqian/Documents/Repositories/tenspiler/metalift/frontend/llvm.py", line 809, in gen_synth
    body = self.grammar(self.writes, self.reads, self.in_scope, relaxed_grammar).src
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1215, in inv0_grammar
    return get_outer_loop_inv(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 971, in get_outer_loop_inv
    type_expr_tree = build_type_expression_tree(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 461, in build_type_expression_tree
    return helper(compute_node, target_type)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 336, in helper
    if node.type == "assignment_expression":
AttributeError: 'NoneType' object has no attribute 'type'

