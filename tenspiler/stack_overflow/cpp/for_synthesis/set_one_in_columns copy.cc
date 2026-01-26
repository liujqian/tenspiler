#include <vector>
using namespace std;

vector<vector<int>> set_one_in_columns(vector<vector<int>> x, vector<int> y)
{
    vector<vector<int>> out;
    int m = y.size();
    int n = x[0].size();

    for (int i = 0; i < m; i++) {
        vector<int> row_vec;
        int num = y[i];
        for (int j = 0; j < n; j++) {
            if (j >= num)
                row_vec.push_back(1);
            else
                row_vec.push_back(0);
        }
        out.push_back(row_vec);
    }

    return out;
}
