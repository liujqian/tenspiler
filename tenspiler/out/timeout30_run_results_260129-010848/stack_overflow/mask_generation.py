# Benchmark mask_generation in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/mask_generation.cc:  tenspiler/stack_overflow/cpp/for_synthesis/mask_generation.cc
Source code: #include <vector>

using namespace std;

vector<vector<int>> mask_generation(vector<int> V) {
    vector<vector<int>> x;
    for (int i = 0; i < V.size(); ++i) {
        vector<int> row_vec;
        for (int j = 0; j < 20; ++j) {
            if (j < V[i]) {
                row_vec.push_back(1);
            } else {
                row_vec.push_back(0);
            }
        }
        x.push_back(row_vec);
    }
    return x;
}
Reading file tenspiler/stack_overflow/cpp/for_synthesis/mask_generation.cc:  tenspiler/stack_overflow/cpp/for_synthesis/mask_generation.cc
Source code: #include <vector>

using namespace std;

vector<vector<int>> mask_generation(vector<int> V) {
    vector<vector<int>> x;
    for (int i = 0; i < V.size(); ++i) {
        vector<int> row_vec;
        for (int j = 0; j < 20; ++j) {
            if (j < V[i]) {
                row_vec.push_back(1);
            } else {
                row_vec.push_back(0);
            }
        }
        x.push_back(row_vec);
    }
    return x;
}
If condition: (j < V[i])
If then statement: {
                row_vec.push_back(1);
            }
If else statement: else {
                row_vec.push_back(0);
            }
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb11
name: for.end
name: invoke.cont9
name: for.inc10<latch>
name: bb10
name: for.body3
name: bb13
name: if.else
name: invoke.cont8
name: bb12
name: if.then
name: invoke.cont
name: if.end
name: for.inc
name: for.cond1<header><exiting>
name: bb10
name: for.body3
name: bb13
name: if.else
name: invoke.cont8
name: bb12
name: if.then
name: invoke.cont
name: if.end
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb11', 'for.end', 'invoke.cont9', 'bb10', 'for.body3', 'bb13', 'if.else', 'invoke.cont8', 'bb12', 'if.then', 'invoke.cont', 'if.end', 'for.inc'], exits: ['for.cond'], latches: ['for.inc10']
found loop: header: for.cond1, body: ['bb10', 'for.body3', 'bb13', 'if.else', 'invoke.cont8', 'bb12', 'if.then', 'invoke.cont', 'if.end'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %row_vec = alloca %"class.std::__1::vector.0", align 8
  %j = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp7 = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/mask_generation_driver.py", line 14, in <module>
    mask_generation(V)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1024, in get_outer_loop_inv
    obj_expr_tree = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 595, in preorder_traversal_with_objs
    then_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 621, in preorder_traversal_with_objs
    raise ParserError(f"Unsupported type: {type_expr_tree['type']}")
tenspiler.tree_parser.ParserError: Unsupported type: compound_statement

