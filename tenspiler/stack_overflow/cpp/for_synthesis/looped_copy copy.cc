#include <vector>

using namespace std;

vector<vector<int>> looped_copy(vector<vector<int>> u_50, vector<vector<int>> u) {
    vector<vector<int>> out;
    for (int i = 0; i < u_50.size(); ++i) {
        vector<int> row_vec;
        for (int j = 0; j < u_50[0].size(); ++j) {
            row_vec.push_back(u[i][j]);
        }
        out.push_back(row_vec);
    }
    return out;
}
