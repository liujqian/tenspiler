#include <vector>

using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> compute_distances_two_loops(vector<vector<int>> train_X, vector<vector<int>> test_X) {
    vector<vector<int>> dists;
    for (int i_test = 0; i_test < test_X.size(); ++i_test) {
        vector<int> row_vec;
        for (int i_train = 0; i_train < train_X.size(); ++i_train) {
            int sum_val = 0;
            for (int j = 0; j < test_X[i_test].size(); ++j) {
                int diff = test_X[i_test][j] - train_X[i_train][j];
                if (diff < 0) {
                    diff = -diff;
                }
                sum_val += diff;
            }
            row_vec.push_back(sum_val);
        }
        dists.push_back(row_vec);
    }
    return dists;
}