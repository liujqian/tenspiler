# Benchmark max_temp_in_thirty_days in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/max_temp_in_thirty_days.cc:  tenspiler/stack_overflow/cpp/for_synthesis/max_temp_in_thirty_days.cc
Source code: #include <vector>

using namespace std;

int max_temp_in_thirty_days(vector<int> data, vector<int> periods) {
    int maxtemp = -10000; // Representing negative infinity
    for (int i = 0; i < periods.size(); ++i) {
        int temp = 0;
        for (int j = 0; j < 30; ++j) {
            temp = temp + data[i + j];
        }
        if (temp > maxtemp) {
            maxtemp = temp;
        }
    }
    return maxtemp;
}
Reading file tenspiler/stack_overflow/cpp/for_synthesis/max_temp_in_thirty_days.cc:  tenspiler/stack_overflow/cpp/for_synthesis/max_temp_in_thirty_days.cc
Source code: #include <vector>

using namespace std;

int max_temp_in_thirty_days(vector<int> data, vector<int> periods) {
    int maxtemp = -10000; // Representing negative infinity
    for (int i = 0; i < periods.size(); ++i) {
        int temp = 0;
        for (int j = 0; j < 30; ++j) {
            temp = temp + data[i + j];
        }
        if (temp > maxtemp) {
            maxtemp = temp;
        }
    }
    return maxtemp;
}
If condition: (temp > maxtemp)
If then statement: {
            maxtemp = temp;
        }
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb15
name: for.end
name: bb17
name: bb16
name: if.then
name: if.end
name: for.inc8<latch>
name: bb14
name: for.body3
name: for.inc
name: for.cond1<header><exiting>
name: bb14
name: for.body3
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb15', 'for.end', 'bb17', 'bb16', 'if.then', 'if.end', 'bb14', 'for.body3', 'for.inc'], exits: ['for.cond'], latches: ['for.inc8']
found loop: header: for.cond1, body: ['bb14', 'for.body3'], exits: ['for.cond1'], latches: ['for.inc']
  %maxtemp = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -10000, i32* %maxtemp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/max_temp_in_thirty_days_driver.py", line 15, in <module>
    max_temp_in_thirty_days(data, periods)
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

