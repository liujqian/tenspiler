#include <vector>

using namespace std;
// Cannot be processed. More than two nested loops.
vector<int> mean_over_first_two_dims_3D(vector<vector<vector<int>>> x) {
    vector<int> out;
    int dim0 = x.size();
    int dim1 = x[0].size();
    int dim2 = x[0][0].size();

    for (int k = 0; k < dim2; ++k) {
        int sum_val = 0;
        for (int i = 0; i < dim0; ++i) {
            for (int j = 0; j < dim1; ++j) {
                sum_val += x[i][j][k];
            }
        }
        out.push_back(sum_val / (dim0 * dim1));
    }
    return out;
}