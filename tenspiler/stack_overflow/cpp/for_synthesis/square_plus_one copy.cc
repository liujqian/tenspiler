#include <vector>
using namespace std;

vector<vector<int>> square_plus_one(vector<vector<int>> arr_in)
{
    vector<vector<int>> result;
    int m = arr_in.size();
    int n = arr_in[0].size();

    for (int i = 0; i < m; i++) {
        vector<int> row_vec;
        for (int j = 0; j < n; j++) {
            int value = arr_in[i][j];
            int dbl = value * value + 1;
            row_vec.push_back(dbl);
        }
        result.push_back(row_vec);
    }
    return result;
}
