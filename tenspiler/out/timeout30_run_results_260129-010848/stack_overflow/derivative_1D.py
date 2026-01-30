# Benchmark derivative_1D in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/derivative_1D.cc:  tenspiler/stack_overflow/cpp/for_synthesis/derivative_1D.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> derivative_1D(vector<int> x) {
    vector<vector<int>> df;
    for (int mu = 0; mu < x.size(); mu++) {
        vector<int> row_vec;
        for (int i = 0; i < x.size(); i++) {
            int val = 0;
            if (mu == i) {
                val = 2 * x[i];
            }
            row_vec.push_back(val);
        }
        df.push_back(row_vec);
    }
    return df;
}
Reading file tenspiler/stack_overflow/cpp/for_synthesis/derivative_1D.cc:  tenspiler/stack_overflow/cpp/for_synthesis/derivative_1D.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> derivative_1D(vector<int> x) {
    vector<vector<int>> df;
    for (int mu = 0; mu < x.size(); mu++) {
        vector<int> row_vec;
        for (int i = 0; i < x.size(); i++) {
            int val = 0;
            if (mu == i) {
                val = 2 * x[i];
            }
            row_vec.push_back(val);
        }
        df.push_back(row_vec);
    }
    return df;
}
If condition: (mu == i)
If then statement: {
                val = 2 * x[i];
            }
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb12
name: for.end
name: invoke.cont9
name: for.inc10<latch>
name: bb11
name: for.body5
name: bb14
name: bb13
name: if.then
name: if.end
name: invoke.cont
name: for.inc
name: for.cond1<header><exiting>
name: bb11
name: for.body5
name: bb14
name: bb13
name: if.then
name: if.end
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb12', 'for.end', 'invoke.cont9', 'bb11', 'for.body5', 'bb14', 'bb13', 'if.then', 'if.end', 'invoke.cont', 'for.inc'], exits: ['for.cond'], latches: ['for.inc10']
found loop: header: for.cond1, body: ['bb11', 'for.body5', 'bb14', 'bb13', 'if.then', 'if.end', 'invoke.cont'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %mu = alloca i32, align 4
  %row_vec = alloca %"class.std::__1::vector.0", align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %mu, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/derivative_1D_driver.py", line 14, in <module>
    derivative_1D(x)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 621, in preorder_traversal_with_objs
    raise ParserError(f"Unsupported type: {type_expr_tree['type']}")
tenspiler.tree_parser.ParserError: Unsupported type: compound_statement

