#include <vector>
using namespace std;

vector<vector<vector<int>>> upper_triangle_matrices_from_binary_sets(
    vector<vector<int>> t1,
    vector<int> upper_tri_indices0,
    vector<int> upper_tri_indices1)
{
    vector<vector<vector<int>>> ms;
    int m = t1.size();

    for (int i = 0; i < m; i++) {
        vector<vector<int>> mat;
        for (int r = 0; r < 3; r++) {
            vector<int> row_vec;
            for (int c = 0; c < 3; c++) {
                row_vec.push_back(0);
            }
            mat.push_back(row_vec);
        }

        for (int k = 0; k < upper_tri_indices0.size(); k++) {
            mat[upper_tri_indices0[k]][upper_tri_indices1[k]] = t1[i][k];
        }

        ms.push_back(mat);
    }
    return ms;
}
