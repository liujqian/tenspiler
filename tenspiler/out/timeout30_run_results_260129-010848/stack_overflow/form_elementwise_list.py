# Benchmark form_elementwise_list in suite stack_overflow failed to run.
# Return code: 1
# Stdout:
Reading file tenspiler/stack_overflow/cpp/for_synthesis/form_elementwise_list.cc:  tenspiler/stack_overflow/cpp/for_synthesis/form_elementwise_list.cc
Source code: #include <vector>
using namespace std;

vector<vector<vector<int>>> calculate_form_elementwise_list(vector<vector<int>> a, int s)
{
    vector<vector<vector<int>>> result;
    int m = a.size();
    int n = a[0].size();

    for (int i = 0; i < m; i++) {
        vector<vector<int>> plane;
        for (int j = 0; j < n; j++) {
            vector<int> pair_vec;
            pair_vec.push_back(s);
            pair_vec.push_back(a[i][j]);
            plane.push_back(pair_vec);
        }
        result.push_back(plane);
    }
    return result;
}

Reading file tenspiler/stack_overflow/cpp/for_synthesis/form_elementwise_list.cc:  tenspiler/stack_overflow/cpp/for_synthesis/form_elementwise_list.cc
Source code: #include <vector>
using namespace std;

vector<vector<vector<int>>> calculate_form_elementwise_list(vector<vector<int>> a, int s)
{
    vector<vector<vector<int>>> result;
    int m = a.size();
    int n = a[0].size();

    for (int i = 0; i < m; i++) {
        vector<vector<int>> plane;
        for (int j = 0; j < n; j++) {
            vector<int> pair_vec;
            pair_vec.push_back(s);
            pair_vec.push_back(a[i][j]);
            plane.push_back(pair_vec);
        }
        result.push_back(plane);
    }
    return result;
}


# Stderr:
/home/liujqian/miniconda3/envs/tenspiler/lib/python3.9/site-packages/tree_sitter/__init__.py:36: FutureWarning: Language(path, name) is deprecated. Use Language(ptr, name) instead.
  warn("{} is deprecated. Use {} instead.".format(old, new), FutureWarning)
Traceback (most recent call last):
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/stack_overflow/auto/driver/form_elementwise_list_driver.py", line 7, in <module>
    driver, input_vars, form_elementwise_list = analyze_double_loops(
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 1172, in analyze_double_loops
    compute_node = find_compute_from_file(file_path)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 781, in find_compute_from_file
    compute_node = find_compute_from_node(root_node)
  File "/home/liujqian/Documents/Repositories/tenspiler/tenspiler/tree_parser.py", line 705, in find_compute_from_node
    raise ParserError(
tenspiler.tree_parser.ParserError: Expected <= 1 push statements in the innermost loop, but found 3

