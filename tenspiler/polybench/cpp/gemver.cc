#include <vector>
using namespace std;



vector<int>  kernel_gemver(vector<vector<int>> A,
                           vector<int> u1,
                           vector<int> v1,
                           vector<int> u2,
                           vector<int> v2,
                           vector<int> w,
                           vector<int> x,
                           vector<int> y,
                           vector<int> z,
                           int alpha,
                           int beta) {
    int N = A.size();

    /* Compute A_out */
    vector<vector<int>> A_out;
    for (int i = 0; i < N; i++) {
        vector<int> row;
        for (int j = 0; j < N; j++) {
            int val = A[i][j] + u1[i] * v1[j] + u2[i] * v2[j];
            row.push_back(val);
        }
        A_out.push_back(row);
    }

    /* Initialize x_out with x */
    vector<int> x_out;
    for (int i = 0; i < N; i++) {
        x_out.push_back(x[i]);
    }

    /* x_out += beta * A_out^T * y */
    vector<int> x_tmp;
    for (int i = 0; i < N; i++) {
        int val = x_out[i];
        for (int j = 0; j < N; j++) {
            val += beta * A_out[j][i] * y[j];
        }
        x_tmp.push_back(val);
    }
    x_out = x_tmp;

    /* x_out += z */
    vector<int> x_final;
    for (int i = 0; i < N; i++) {
        x_final.push_back(x_out[i] + z[i]);
    }
    x_out = x_final;

    /* Initialize w_out with w */
    vector<int> w_out;
    for (int i = 0; i < N; i++) {
        w_out.push_back(w[i]);
    }

    /* w_out += alpha * A_out * x_out */
    vector<int> w_tmp;
    for (int i = 0; i < N; i++) {
        int val = w_out[i];
        for (int j = 0; j < N; j++) {
            val += alpha * A_out[i][j] * x_out[j];
        }
        w_tmp.push_back(val);
    }
    w_out = w_tmp;
    return w_out;
}
