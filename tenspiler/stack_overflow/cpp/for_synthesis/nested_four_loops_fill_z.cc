#include <vector>
using namespace std;

vector<vector<int>> nested_four_loops_fill_z(vector<int> x, vector<int> y, vector<vector<int>> z, int alpha, int delta)
{
    for (int i = 0; i < y.size(); i++) {
        int xi = x[i];

        int xi_alpha = 1;
        for (int k = 0; k < alpha; k++) {
            xi_alpha *= xi;
        }

        for (int j = 0; j < x.size(); j++) {
            int yj = y[j];
            for (int a = 0; a < x.size(); a++) {
                int xa = x[a];
                for (int b = 0; b < y.size(); b++) {
                    int yb = y[b];
                    z[i * y.size() + a][j * y.size() + b] =
                        xi_alpha + (1 - delta) * xi + yj - xa - yb;
                }
            }
        }
    }
    return z;
}
