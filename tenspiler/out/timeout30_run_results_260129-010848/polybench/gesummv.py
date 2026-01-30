# Benchmark gesummv in suite polybench failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/polybench/cpp/for_synthesis/gesummv.cc:  tenspiler/polybench/cpp/for_synthesis/gesummv.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> kernel_gesummv(vector<vector<int>> A,
                                   vector<vector<int>> B,
                                   vector<int> x,
                                   int alpha,
                                   int beta) {
    int N = A.size();

    vector<int> tmp_out;
    vector<int> y_out;

    for (int i = 0; i < N; i++) {
        int tmp_val = 0;
        int y_val = 0;
        for (int j = 0; j < A[0].size(); j++) {
            tmp_val = A[i][j] * x[j] + tmp_val;
            y_val = B[i][j] * x[j] + y_val;
        }
        y_val = alpha * tmp_val + beta * y_val;

        tmp_out.push_back(tmp_val);
        y_out.push_back(y_val);
    }

    vector<vector<int>> result;
    result.push_back(tmp_out);
    result.push_back(y_out);

    return result;
}

Reading file tenspiler/polybench/cpp/for_synthesis/gesummv.cc:  tenspiler/polybench/cpp/for_synthesis/gesummv.cc
Source code: #include <vector>
using namespace std;

vector<vector<int>> kernel_gesummv(vector<vector<int>> A,
                                   vector<vector<int>> B,
                                   vector<int> x,
                                   int alpha,
                                   int beta) {
    int N = A.size();

    vector<int> tmp_out;
    vector<int> y_out;

    for (int i = 0; i < N; i++) {
        int tmp_val = 0;
        int y_val = 0;
        for (int j = 0; j < A[0].size(); j++) {
            tmp_val = A[i][j] * x[j] + tmp_val;
            y_val = B[i][j] * x[j] + y_val;
        }
        y_val = alpha * tmp_val + beta * y_val;

        tmp_out.push_back(tmp_val);
        y_out.push_back(y_val);
    }

    vector<vector<int>> result;
    result.push_back(tmp_out);
    result.push_back(y_out);

    return result;
}


# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/polybench/auto/driver/gesummv_driver.py", line 7, in <module>
    driver, input_vars, gesummv = analyze_double_loops(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1172, in analyze_double_loops
    compute_node = find_compute_from_file(file_path)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 781, in find_compute_from_file
    compute_node = find_compute_from_node(root_node)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 741, in find_compute_from_node
    assert len(inner_loop_compound_nodes) <= 1
AssertionError

