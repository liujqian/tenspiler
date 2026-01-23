#include <vector>
#include <cmath>
using namespace std;

vector<vector<vector<vector<vector<int>>>>> four_nested_loop_absolute_error(
    vector<int> range_arr, int target, int threshold)
{
    vector<vector<vector<vector<vector<int>>>>> indices;
    int n = range_arr.size();

    for (int a = 0; a < n; a++) {
        vector<vector<vector<vector<int>>>> b_vec;
        for (int b = 0; b < n; b++) {
            vector<vector<vector<int>>> c_vec;
            for (int c = 0; c < n; c++) {
                vector<vector<int>> d_vec;
                for (int d = 0; d < n; d++) {
                    double val = pow(2.0, range_arr[a]) * pow(3.0, range_arr[b]) *
                                 pow(5.0, range_arr[c]) * pow(7.0, range_arr[d]);

                    double diff = val - target;
                    if (diff < 0)
                        diff = -diff;

                    vector<int> vec4;
                    if (diff <= threshold) {
                        vec4.push_back(range_arr[a]);
                        vec4.push_back(range_arr[b]);
                        vec4.push_back(range_arr[c]);
                        vec4.push_back(range_arr[d]);
                    } else {
                        vec4.push_back(-1);
                        vec4.push_back(-1);
                        vec4.push_back(-1);
                        vec4.push_back(-1);
                    }
                    d_vec.push_back(vec4);
                }
                c_vec.push_back(d_vec);
            }
            b_vec.push_back(c_vec);
        }
        indices.push_back(b_vec);
    }

    return indices;
}
