#include <vector>
using namespace std;
// Cannot be processed. Indexed update.
vector<vector<vector<int>>> set_values_use_one_array_values_as_indices(
    vector<vector<int>> x,
    vector<vector<int>> y,
    vector<vector<vector<int>>> matrix
) {
    for (int i = 0; i < x.size(); i++) {
        for (int j = 0; j < x[0].size(); j++) {
            matrix[i][j][x[i][j]] = y[i][j];
        }
    }
    return matrix;
}
