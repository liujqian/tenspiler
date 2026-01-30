# Benchmark supply_demand in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/supply_demand.cc:  tenspiler/stack_overflow/cpp/for_synthesis/supply_demand.cc
Source code: #include <vector>
using namespace std;

vector<int> supply_deman(vector<int> prices) {
    vector<int> y;
    int n = prices.size();

    for (int m = 0; m < n; m++) {
        int count = 0;
        for (int p = 0; p < n; p++) {
            if (prices[p] > prices[m]) {
                count = count + 1;
            }
        }
        y.push_back(count);
    }
    return y;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/supply_demand.cc:  tenspiler/stack_overflow/cpp/for_synthesis/supply_demand.cc
Source code: #include <vector>
using namespace std;

vector<int> supply_deman(vector<int> prices) {
    vector<int> y;
    int n = prices.size();

    for (int m = 0; m < n; m++) {
        int count = 0;
        for (int p = 0; p < n; p++) {
            if (prices[p] > prices[m]) {
                count = count + 1;
            }
        }
        y.push_back(count);
    }
    return y;
}

If condition: (prices[p] > prices[m])
If then statement: {
                count = count + 1;
            }
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond1
name: bb14
name: for.end
name: invoke.cont
name: for.inc9<latch>
name: bb13
name: for.body3
name: bb16
name: bb15
name: if.then
name: if.end
name: for.inc
name: for.cond1<header><exiting>
name: bb13
name: for.body3
name: bb16
name: bb15
name: if.then
name: if.end
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond1', 'bb14', 'for.end', 'invoke.cont', 'bb13', 'for.body3', 'bb16', 'bb15', 'if.then', 'if.end', 'for.inc'], exits: ['for.cond'], latches: ['for.inc9']
found loop: header: for.cond1, body: ['bb13', 'for.body3', 'bb16', 'bb15', 'if.then', 'if.end'], exits: ['for.cond1'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %count = alloca i32, align 4
  %p = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv(%"class.std::__1::vector"* %prices) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/supply_demand_driver.py", line 14, in <module>
    supply_demand(prices)
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

