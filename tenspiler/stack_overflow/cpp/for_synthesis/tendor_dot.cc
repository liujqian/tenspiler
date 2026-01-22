#include <vector>
#include <cmath>
using namespace std;

double tensor_dot(vector<int> as_, vector<vector<int>> xs)
{
    double val = 0.0;

    vector<vector<vector<int>>> As_;
    for (int i = 0; i < as_.size(); i++) {
        vector<vector<int>> mat;
        for (int r = 0; r < 3; r++) {
            vector<int> row;
            for (int c = 0; c < 3; c++) {
                row.push_back(1);
            }
            mat.push_back(row);
        }
        As_.push_back(mat);
    }

    for (int i = 0; i < as_.size(); i++) {
        int a = as_[i];
        As_[i][0][0] = a;
        As_[i][2][2] = a * a;

        for (int j = 0; j < xs.size(); j++) {
            int dot_val = 0;
            for (int k = 0; k < 3; k++) {
                for (int l = 0; l < 3; l++) {
                    dot_val += xs[j][k] * As_[i][k][l] * xs[j][l];
                }
            }
            double exp_val = exp(-1.0 * dot_val);
            val = val + exp_val;
        }
    }

    return val;
}
