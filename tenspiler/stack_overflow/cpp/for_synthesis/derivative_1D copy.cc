#include <vector>
using namespace std;

vector<vector<int>> derivative_1D(vector<int> x) {
    vector<vector<int>> df;
    for (int mu = 0; mu < x.size(); mu++) {
        vector<int> row_vec;
        for (int i = 0; i < x.size(); i++) {
            int val = 0;
            if (mu == i) {
                val = 2 * x[i];
            }
            row_vec.push_back(val);
        }
        df.push_back(row_vec);
    }
    return df;
}