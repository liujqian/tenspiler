#include <vector>
using namespace std;

vector<int> kernel_atax(vector<vector<int>> A,
                                          vector<int> x) {
    int M = A.size();
    int N = A[0].size();

    vector<int> y;
    vector<int> tmp;
    for (int i = 0; i < N; i++) {
        y.push_back(0);
    }
    for (int k = 0; k < M; k++) {
        int tmp_val = 0;
        for (int j = 0; j < N; j++) {
            tmp_val += A[k][j] * x[j];
        }
        tmp.push_back(tmp_val);

        vector<int> new_y;
        for (int l = 0; l < N; l++) {
            int y_val = y[l] + A[k][l] * tmp_val;
            new_y.push_back(y_val);
        }
        y = new_y;
    }

    return y;
}
