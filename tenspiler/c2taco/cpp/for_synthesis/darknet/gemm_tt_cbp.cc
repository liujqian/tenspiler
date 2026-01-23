#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> gemm_tt(int ALPHA, int M, int N, int K,
                               vector<vector<int>> A,
                               vector<vector<int>> B,
                               vector<vector<int>> C) {
    vector<vector<int>> updatedC;
    for (int i = 0; i < M; ++i) {
        vector<int> row = C[i];
        for (int j = 0; j < N; ++j) {
            int sum = 0.0;
            for (int k = 0; k < K; ++k) {
                sum += ALPHA * A[k][i] * B[j][k];
            }
            row[j] += sum;
        }
        updatedC.push_back(row);
    }
    return updatedC;
}
