#include <vector>
#include <cmath>

using namespace std;

vector<vector<int>> double_loop_for_regression(
    vector<vector<int>> bbeta,
    vector<int> rand1,
    vector<int> rand2,
    vector<int> rand3,
    vector<int> depths)
{
    vector<vector<int>> x_new;
    vector<vector<int>> y_new;

    for (int i = 0; i < rand1.size(); ++i) {
        int a_i = rand1[i];
        int b_i = rand2[i];
        int c_i = rand3[i];
        double depth_ratio = depths[i] / 3500.0;

        vector<int> x_row;
        vector<int> y_row;

        for (int j = 0; j < bbeta.size(); ++j) {
            int b0 = bbeta[j][0];
            int b1 = bbeta[j][1];
            double depth_term = pow(depth_ratio, b0);
            int sum_term = b_i + (b1 * c_i);

            y_row.push_back(log(a_i * depth_term));
            x_row.push_back(log(sum_term));
        }
        x_new.push_back(x_row);
        y_new.push_back(y_row);
    }

    return x_new;
}