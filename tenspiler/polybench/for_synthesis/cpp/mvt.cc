#include <vector>
#include <utility>
using namespace std;

pair<vector<int>, vector<int>> kernel_mvt(vector<vector<int>> A,
                                          vector<int> x1,
                                          vector<int> x2,
                                          vector<int> y_1,
                                          vector<int> y_2) {
    int N = A.size();

    /* Compute x1_out */
    vector<int> x1_out;
    for (int i = 0; i < x1.size(); i++) {
        int val = x1[i];
        for (int j = 0; j < N; j++) {
            val += A[i][j] * y_1[j];
        }
        x1_out.push_back(val);
    }

    /* Compute x2_out */
    vector<int> x2_out;
    for (int i = 0; i < x2.size(); i++) {
        int val = x2[i];
        for (int j = 0; j < N; j++) {
            val += A[j][i] * y_2[j];
        }
        x2_out.push_back(val);
    }

    return make_pair(x1_out, x2_out);
}
