#include <vector>
using namespace std;

vector<vector<int>> matmul(int M, int N, int K,
                              vector<vector<int>> A,
                              vector<vector<int>> B) {
    vector<vector<int>> C;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = 0.0;
            for (int k = 0; k < K; ++k) {
                sum += A[i][k] * B[k][j];
            }
            row.push_back(sum);
        }
        C.push_back(row);
    }
    return C;
}
