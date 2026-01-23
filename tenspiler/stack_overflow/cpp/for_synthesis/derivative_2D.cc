#include <vector>
using namespace std;

vector<vector<vector<vector<int>>>> derivative_2D(vector<vector<int>> x) {
    vector<vector<vector<vector<int>>>> df;
    int m = x.size();
    int n = x[0].size();

    for (int mu = 0; mu < m; mu++) {
        vector<vector<vector<int>>> dim_mu;
        for (int nu = 0; nu < n; nu++) {
            vector<vector<int>> dim_nu;
            for (int i = 0; i < m; i++) {
                vector<int> dim_i;
                for (int j = 0; j < n; j++) {
                    int val = 0;
                    if ((mu == i) && (nu == j)) {
                        val = 2 * x[i][j];
                    }
                    dim_i.push_back(val);
                }
                dim_nu.push_back(dim_i);
            }
            dim_mu.push_back(dim_nu);
        }
        df.push_back(dim_mu);
    }
    return df;
}