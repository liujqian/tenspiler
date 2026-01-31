/home/liujqian/miniconda3/envs/tenspiler/bin/python /home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/zipped_loop_computation_driver.py 
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Reading file tenspiler/stack_overflow/cpp/for_synthesis/zipped_loop_computation.cc:  tenspiler/stack_overflow/cpp/for_synthesis/zipped_loop_computation.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> zipped_loop_computation(vector<int> a, vector<int> b, vector<int> d, vector<int> e)
{
    vector<vector<int>> c;
    int n = d.size();
    int m = a.size();

    for (int i = 0; i < n; i++) {
        vector<int> row_vec;

        // Python: c[i, 0:c.shape[1]] = ((b * (25.0 - a)) / (8 * e[i])) + d[i]
        for (int j = 0; j < m; j++) {
            int val = (b[j] * (25 - a[j]) / 8 * e[i]) + d[i];
            row_vec.push_back(val);
        }

        c.push_back(row_vec);
    }

    return c;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/zipped_loop_computation.cc:  tenspiler/stack_overflow/cpp/for_synthesis/zipped_loop_computation.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> zipped_loop_computation(vector<int> a, vector<int> b, vector<int> d, vector<int> e)
{
    vector<vector<int>> c;
    int n = d.size();
    int m = a.size();

    for (int i = 0; i < n; i++) {
        vector<int> row_vec;

        // Python: c[i, 0:c.shape[1]] = ((b * (25.0 - a)) / (8 * e[i])) + d[i]
        for (int j = 0; j < m; j++) {
            int val = (b[j] * (25 - a[j]) / 8 * e[i]) + d[i];
            row_vec.push_back(val);
        }

        c.push_back(row_vec);
    }

    return c;
}

Push statement: row_vec.push_back(val)
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond3
name: bb18
name: for.end
name: invoke.cont15
name: for.inc16<latch>
name: bb17
name: for.body5
name: invoke.cont
name: for.inc
name: for.cond3<header><exiting>
name: bb17
name: for.body5
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond3', 'bb18', 'for.end', 'invoke.cont15', 'bb17', 'for.body5', 'invoke.cont', 'for.inc'], exits: ['for.cond'], latches: ['for.inc16']
found loop: header: for.cond3, body: ['bb17', 'for.body5', 'invoke.cont'], exits: ['for.cond3'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %row_vec = alloca %"class.std::__1::vector.0", align 8
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector.0"* %d) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %call1 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector.0"* %a) #10
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/zipped_loop_computation_driver.py", line 17, in <module>
    zipped_loop_computation(a, b, d, e)
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
  [Previous line repeated 1 more time]
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 501, in preorder_traversal_with_objs
    return choose(*vars_by_type_str[type_expr_tree])
KeyError: 'matrix'