# Benchmark set_one_in_columns in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/set_one_in_columns.cc:  tenspiler/stack_overflow/cpp/for_synthesis/set_one_in_columns.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> set_one_in_columns(vector<vector<int>> x, vector<int> y)
{
    vector<vector<int>> out;
    int m = y.size();
    int n = x[0].size();

    for (int i = 0; i < m; i++) {
        vector<int> row_vec;
        int num = y[i];
        for (int j = 0; j < n; j++) {
            if (j >= num)
                row_vec.push_back(1);
            else
                row_vec.push_back(0);
        }
        out.push_back(row_vec);
    }

    return out;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/set_one_in_columns.cc:  tenspiler/stack_overflow/cpp/for_synthesis/set_one_in_columns.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> set_one_in_columns(vector<vector<int>> x, vector<int> y)
{
    vector<vector<int>> out;
    int m = y.size();
    int n = x[0].size();

    for (int i = 0; i < m; i++) {
        vector<int> row_vec;
        int num = y[i];
        for (int j = 0; j < n; j++) {
            if (j >= num)
                row_vec.push_back(1);
            else
                row_vec.push_back(0);
        }
        out.push_back(row_vec);
    }

    return out;
}

If condition: (j >= num)
If then statement: row_vec.push_back(1);
If else statement: else
                row_vec.push_back(0);
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond6
name: bb14
name: for.end
name: invoke.cont12
name: for.inc13<latch>
name: bb13
name: for.body8
name: bb16
name: if.else
name: invoke.cont11
name: bb15
name: if.then
name: invoke.cont
name: if.end
name: for.inc
name: for.cond6<header><exiting>
name: bb13
name: for.body8
name: bb16
name: if.else
name: invoke.cont11
name: bb15
name: if.then
name: invoke.cont
name: if.end
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond6', 'bb14', 'for.end', 'invoke.cont12', 'bb13', 'for.body8', 'bb16', 'if.else', 'invoke.cont11', 'bb15', 'if.then', 'invoke.cont', 'if.end', 'for.inc'], exits: ['for.cond'], latches: ['for.inc13']
found loop: header: for.cond6, body: ['bb13', 'for.body8', 'bb16', 'if.else', 'invoke.cont11', 'bb15', 'if.then', 'invoke.cont', 'if.end'], exits: ['for.cond6'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %row_vec = alloca %"class.std::__1::vector.0", align 8
  %num = alloca i32, align 4
  %j = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp10 = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector.0"* %y) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  %call1 = call nonnull align 8 dereferenceable(24) %"class.std::__1::vector.0"* @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm(%"class.std::__1::vector"* %x, i64 0) #10
  %call2 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector.0"* %call1) #10
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/set_one_in_columns_driver.py", line 16, in <module>
    set_one_in_columns(x, y)
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
tenspiler.tree_parser.ParserError: Unsupported type: call_expression

