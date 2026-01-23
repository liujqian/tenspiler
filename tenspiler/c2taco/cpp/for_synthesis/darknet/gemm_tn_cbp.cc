#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> gemm_tn(int ALPHA, int M, int N, int K,
                               vector<vector<int>> A,
                               vector<vector<int>> B,
                               vector<vector<int>> C) {
    vector<vector<int>> updatedC;
    for (int i = 0; i < M; ++i) {
        vector<int> row = C[i];
        for (int k = 0; k < K; ++k) {
            int A_PART = ALPHA * A[k][i];
            for (int j = 0; j < N; ++j) {
                row[j] += A_PART * B[k][j];
            }
        }
        updatedC.push_back(row);
    }
    return updatedC;
}
