#include <vector>

using namespace std;

vector<vector<int>> mean_over_first_two_axes_4D(vector<vector<vector<vector<int>>>> x) {
    vector<vector<int>> out;
    int n0 = x.size();
    int n1 = x[0].size();
    int n2 = x[0][0].size();
    int n3 = x[0][0][0].size();
    int count = n0 * n1;

    for (int k = 0; k < n2; ++k) {
        vector<int> row_vec;
        for (int l = 0; l < n3; ++l) {
            int sum_val = 0;
            for (int i = 0; i < n0; ++i) {
                for (int j = 0; j < n1; ++j) {
                    sum_val += x[i][j][k][l];
                }
            }
            // Use integer division to mimic the storage into an int array
            int mean_val = sum_val / count;
            row_vec.push_back(mean_val);
        }
        out.push_back(row_vec);
    }
    return out;
}