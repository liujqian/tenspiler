#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> grid_mean_2d(vector<vector<int>> x, vector<int> z, vector<int> xl, vector<int> yl, vector<vector<int>> zm)
{
    int nx = zm.size();
    int ny = zm[0].size();
    int n = x.size();

    vector<vector<int>> out;
    for (int i = 0; i < nx; i++) {
        vector<int> xmask;
        for (int k = 0; k < n; k++) {
            if (x[k][0] > xl[i] && x[k][0] <= xl[i + 1])
                xmask.push_back(1);
            else
                xmask.push_back(0);
        }

        vector<int> row_vec;
        for (int j = 0; j < ny; j++) {
            int sum_val = 0;
            int count_val = 0;
            for (int k = 0; k < n; k++) {
                if (xmask[k] == 1 && x[k][1] > yl[j] && x[k][1] <= yl[j + 1]) {
                    sum_val += z[k];
                    count_val += 1;
                }
            }
            row_vec.push_back(sum_val / count_val);
        }
        out.push_back(row_vec);
    }
    return out;
}
