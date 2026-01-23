#include <vector>
using namespace std;

vector<vector<int>> looped_multiplication2(vector<vector<int>> x, vector<vector<int>> y, vector<int> func_weight)
{
    vector<vector<int>> result;
    int n = x.size();

    for (int i = 0; i < n; i++) {
        vector<int> row_vec;
        for (int j = 0; j < 9; j++)
            row_vec.push_back(0);
        result.push_back(row_vec);
    }

    for (int a = 0; a < 3; a++) {
        for (int b = 0; b < 3; b++) {
            for (int i = 0; i < n; i++) {
                result[i][3 * a + b] = x[i][a] * y[i][b] * func_weight[i];
            }
        }
    }

    return result;
}
