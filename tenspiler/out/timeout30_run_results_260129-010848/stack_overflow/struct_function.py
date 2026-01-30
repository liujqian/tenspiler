# Benchmark struct_function in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/struct_function.cc:  tenspiler/stack_overflow/cpp/for_synthesis/struct_function.cc
Source code: #include <vector>
using namespace std;

vector<int> structFunPython(vector<int> f, vector<int> sf2)
{
    vector<int> result;

    for (int i = 0; i < sf2.size(); i++) {
        int count = 0;
        int sf2_val = sf2[i];

        for (int j = 0; j < f.size(); j++) {
            if ((j >= 1) && (j < f.size() - i)) {
                int diff = f[i + j] - f[i];
                sf2_val = sf2_val + diff * diff;
                count = count + 1;
            }
        }

        result.push_back(sf2_val / count);
    }

    return result;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/struct_function.cc:  tenspiler/stack_overflow/cpp/for_synthesis/struct_function.cc
Source code: #include <vector>
using namespace std;

vector<int> structFunPython(vector<int> f, vector<int> sf2)
{
    vector<int> result;

    for (int i = 0; i < sf2.size(); i++) {
        int count = 0;
        int sf2_val = sf2[i];

        for (int j = 0; j < f.size(); j++) {
            if ((j >= 1) && (j < f.size() - i)) {
                int diff = f[i + j] - f[i];
                sf2_val = sf2_val + diff * diff;
                count = count + 1;
            }
        }

        result.push_back(sf2_val / count);
    }

    return result;
}

If condition: ((j >= 1) && (j < f.size() - i))
If then statement: {
                int diff = f[i + j] - f[i];
                sf2_val = sf2_val + diff * diff;
                count = count + 1;
            }
name: for.cond<header><exiting>
name: bb
name: for.body
name: for.cond3
name: bb24
name: for.end
name: invoke.cont
name: for.inc20<latch>
name: bb23
name: for.body7
name: bb26
name: bb25
name: land.lhs.true
name: bb28
name: bb27
name: if.then
name: if.end
name: for.inc
name: for.cond3<header><exiting>
name: bb23
name: for.body7
name: bb26
name: bb25
name: land.lhs.true
name: bb28
name: bb27
name: if.then
name: if.end
name: for.inc<latch>
found loop: header: for.cond, body: ['bb', 'for.body', 'for.cond3', 'bb24', 'for.end', 'invoke.cont', 'bb23', 'for.body7', 'bb26', 'bb25', 'land.lhs.true', 'bb28', 'bb27', 'if.then', 'if.end', 'for.inc'], exits: ['for.cond'], latches: ['for.inc20']
found loop: header: for.cond3, body: ['bb23', 'for.body7', 'bb26', 'bb25', 'land.lhs.true', 'bb28', 'bb27', 'if.then', 'if.end'], exits: ['for.cond3'], latches: ['for.inc']
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %sf2_val = alloca i32, align 4
  %j = alloca i32, align 4
  %diff = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
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
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/struct_function_driver.py", line 15, in <module>
    struct_function(f, sf2)
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

