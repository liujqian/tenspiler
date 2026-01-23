#include <vector>
#include <cmath>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> nested_loop_matrix_set_up(vector<vector<int>> X)
{
    vector<vector<int>> matrix;
    int n0 = X.size();
    int n1 = X[0].size();

    for (int i = 0; i < n0; i++) {
        vector<int> row_vec;
        for (int j = 0; j < n0; j++) {
            int x_ij = X[i][j];

            vector<vector<int>> P;
            for (int l = 0; l < 4; l++) {
                vector<int> prow;
                for (int m = 0; m < 4; m++) {
                    prow.push_back(cos(x_ij + l + m + 9));
                }
                P.push_back(prow);
            }

            int f = -P[0][1] / P[0][0];
            row_vec.push_back(f);
        }
        matrix.push_back(row_vec);
    }
    return matrix;
}
