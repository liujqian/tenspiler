#include <vector>
using namespace std;

vector<vector<vector<int>>> looped_multiplication(vector<vector<vector<int>>> array, vector<int> x_vals)
{
    vector<vector<vector<int>>> new_arr;
    int A = array.size();
    int B = array[0].size();
    int C = array[0][0].size();

    for (int i = 0; i < A; i++) {
        vector<vector<int>> mid_vec;
        for (int b = 0; b < B; b++) {
            vector<int> inner_vec;
            for (int j = 0; j < C; j++) {
                inner_vec.push_back(0);
            }
            mid_vec.push_back(inner_vec);
        }
        new_arr.push_back(mid_vec);
    }

    for (int i = 0; i < A; i++) {
        for (int j = 0; j < C; j++) {
            for (int b = 0; b < B; b++) {
                new_arr[i][b][j] = array[i][b][j] * x_vals[b];
            }
        }
    }

    return new_arr;
}
