# Benchmark sum_columns in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/sum_columns.cc:  tenspiler/stack_overflow/cpp/for_synthesis/sum_columns.cc
Source code: #include <vector>
using namespace std;

vector<int> calculate_sum_columns(vector<vector<int>> a, int c)
{
    vector<int> results;
    int n = a[0].size();
    for (int i = 0; i < n; i++) {
        results.push_back(c * (a[0][i] + 2 * a[1][i] + 2 * a[2][i] + a[3][i]));
    }
    return results;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/sum_columns.cc:  tenspiler/stack_overflow/cpp/for_synthesis/sum_columns.cc
Source code: #include <vector>
using namespace std;

vector<int> calculate_sum_columns(vector<vector<int>> a, int c)
{
    vector<int> results;
    int n = a[0].size();
    for (int i = 0; i < n; i++) {
        results.push_back(c * (a[0][i] + 2 * a[1][i] + 2 * a[2][i] + a[3][i]));
    }
    return results;
}

Push statement: results.push_back(c * (a[0][i] + 2 * a[1][i] + 2 * a[2][i] + a[3][i]))
name: for.cond<header><exiting>
name: bb
name: for.body
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'invoke.cont'], exits: ['for.cond'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call nonnull align 8 dereferenceable(24) %"class.std::__1::vector"* @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm(%"class.std::__1::vector.1"* %a, i64 0) #10
  %call1 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector"* %call) #10
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/sum_columns_driver.py", line 15, in <module>
    sum_columns(a, c)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1005, in get_outer_loop_inv
    raise ParserError("is_outer_loop_index_first function is not provided")
tenspiler.tree_parser.ParserError: is_outer_loop_index_first function is not provided

