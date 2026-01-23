#include <vector>

using namespace std;

vector<vector<int>> looped_power(vector<int> data_x) {
    vector<vector<int>> X;
    int n = data_x.size();
    for (int i = 0; i < n; ++i) {
        vector<int> row_vec;
        for (int j = 0; j < n; ++j) {
            int val = 1;
            for (int k = 0; k < j; ++k) {
                val *= data_x[i];
            }
            row_vec.push_back(val);
        }
        X.push_back(row_vec);
    }
    return X;
}