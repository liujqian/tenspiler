# Benchmark add_two_arrays_by_comparing_sizes in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/add_two_arrays_by_comparing_sizes.cc:  tenspiler/stack_overflow/cpp/for_synthesis/add_two_arrays_by_comparing_sizes.cc
Source code: #include <vector>

using namespace std;

vector<int> add_two_arrays_by_comparing_sizes(vector<int> a, vector<int> b) {
    // combined_result_arr = np.zeros((a.shape[0],), dtype=a.dtype)
    vector<int> combined_result_arr;
    for (int i = 0; i < a.size(); ++i) {
        // Initialize the element value to 0 (simulating np.zeros initialization)
        int current_val = 0;

        // if b[i] >= a[i]:
        if (b[i] >= a[i]) {
            // combined_result = a[i] + b[i]
            int combined_result = a[i] + b[i];
            // combined_result_arr[i] = combined_result
            current_val = combined_result;
        }

        // Use push_back to build the array
        combined_result_arr.push_back(current_val);
    }
    return combined_result_arr;
}
Reading file tenspiler/stack_overflow/cpp/for_synthesis/add_two_arrays_by_comparing_sizes.cc:  tenspiler/stack_overflow/cpp/for_synthesis/add_two_arrays_by_comparing_sizes.cc
Source code: #include <vector>

using namespace std;

vector<int> add_two_arrays_by_comparing_sizes(vector<int> a, vector<int> b) {
    // combined_result_arr = np.zeros((a.shape[0],), dtype=a.dtype)
    vector<int> combined_result_arr;
    for (int i = 0; i < a.size(); ++i) {
        // Initialize the element value to 0 (simulating np.zeros initialization)
        int current_val = 0;

        // if b[i] >= a[i]:
        if (b[i] >= a[i]) {
            // combined_result = a[i] + b[i]
            int combined_result = a[i] + b[i];
            // combined_result_arr[i] = combined_result
            current_val = combined_result;
        }

        // Use push_back to build the array
        combined_result_arr.push_back(current_val);
    }
    return combined_result_arr;
}
If condition: (b[i] >= a[i])
If then statement: {
            // combined_result = a[i] + b[i]
            int combined_result = a[i] + b[i];
            // combined_result_arr[i] = combined_result
            current_val = combined_result;
        }
name: for.cond<header><exiting>
name: bb
name: for.body
name: bb15
name: bb14
name: if.then
name: if.end
name: invoke.cont
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'bb15', 'bb14', 'if.then', 'if.end', 'invoke.cont'], exits: ['for.cond'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %current_val = alloca i32, align 4
  %combined_result = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i1 = bitcast %"class.std::__1::vector"* %agg.result to i8*
  store i8* %i1, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev(%"class.std::__1::vector"* %agg.result) #10
  store i32 0, i32* %i, align 4
  br label %for.cond

# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/add_two_arrays_by_comparing_sizes_driver.py", line 15, in <module>
    add_two_arrays_by_comparing_sizes(a, b)
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1024, in get_outer_loop_inv
    obj_expr_tree = preorder_traversal_with_objs(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 621, in preorder_traversal_with_objs
    raise ParserError(f"Unsupported type: {type_expr_tree['type']}")
tenspiler.tree_parser.ParserError: Unsupported type: compound_statement

