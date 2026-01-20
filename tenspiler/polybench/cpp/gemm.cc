#include <vector>
using namespace std;

vector<vector<int>> kernel_gemm(vector<vector<int>> A,
                                vector<vector<int>> B,
                                vector<vector<int>> C,
                                int alpha,
                                int beta) {
    int ni = A.size();
    int nk = A[0].size();
    int nj = B[0].size();

    vector<vector<int>> S;

    for (int i = 0; i < ni; i++) {
        vector<int> row_s;
        for (int j = 0; j < nj; j++) {
            int val = beta * C[i][j];
            for (int k = 0; k < nk; k++) {
                val += alpha * A[i][k] * B[k][j];
            }
            row_s.push_back(val);
        }
        S.push_back(row_s);
    }

    return S;
}
