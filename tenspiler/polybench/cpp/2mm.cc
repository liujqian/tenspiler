#include <vector>
using namespace std;

vector<vector<int>> kernel_2mm(vector<vector<int>> A,
                               vector<vector<int>> B,
                               vector<vector<int>> C,
                               vector<vector<int>> D,
                               int alpha,
                               int beta) {
    int M = A.size();
    int K = A[0].size();
    int N = B[0].size();
    int L = C[0].size();

    vector<vector<int>> tmp;
    for (int i = 0; i < M; i++) {
        vector<int> row_tmp;
        for (int j = 0; j < N; j++) {
            int val = 0;
            for (int k = 0; k < K; k++) {
                val += alpha * A[i][k] * B[k][j];
            }
            row_tmp.push_back(val);
        }
        tmp.push_back(row_tmp);
    }

    vector<vector<int>> S;
    for (int i = 0; i < M; i++) {
        vector<int> row_s;
        for (int j = 0; j < L; j++) {
            int val = beta * D[i][j];
            for (int k = 0; k < N; k++) {
                val += tmp[i][k] * C[k][j];
            }
            row_s.push_back(val);
        }
        S.push_back(row_s);
    }

    return S;
}