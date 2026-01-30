# Benchmark relative_difference in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/relative_difference.cc:  tenspiler/stack_overflow/cpp/for_synthesis/relative_difference.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> calculate_relative_difference(vector<int> a) {
    vector<vector<int>> rel_diff;
    int n = a.size();

    for (int j = 0; j < n; j++) {
        vector<int> row_vec;
        for (int i = 0; i < n; i++) {
            row_vec.push_back((a[j] - a[i]) / a[i] * 100);
        }
        rel_diff.push_back(row_vec);
    }
    return rel_diff;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/relative_difference.cc:  tenspiler/stack_overflow/cpp/for_synthesis/relative_difference.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> calculate_relative_difference(vector<int> a) {
    vector<vector<int>> rel_diff;
    int n = a.size();

    for (int j = 0; j < n; j++) {
        vector<int> row_vec;
        for (int i = 0; i < n; i++) {
            row_vec.push_back((a[j] - a[i]) / a[i] * 100);
        }
        rel_diff.push_back(row_vec);
    }
    return rel_diff;
}

Push statement: row_vec.push_back((a[j] - a[i]) / a[i] * 100)
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb16
name: for.end
name: invoke.cont10
name: for.inc11<latch>
name: bb15
name: for.body3
name: invoke.cont
name: for.inc
name: for.cond1<header><exiting>
name: bb15
name: for.body3
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb16', 'for.end', 'invoke.cont10', 'bb15', 'for.body3', 'invoke.cont', 'for.inc'], exits: ['for.cond'], latches: ['for.inc11']
found loop: header: for.cond1, body: ['bb15', 'for.body3', 'invoke.cont'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %row_vec = alloca %"class.std::__1::vector.0", align 8
  %i = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector.0"* %a) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/relative_difference_driver.py", line 14, in <module>
    relative_difference(a)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 530, in preorder_traversal_with_objs
    left_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 530, in preorder_traversal_with_objs
    left_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 530, in preorder_traversal_with_objs
    left_expr = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 501, in preorder_traversal_with_objs
    return choose(*vars_by_type_str[type_expr_tree])
KeyError: 'matrix'

