#include <vector>
using namespace std;

vector<vector<int>> kernel_symm(vector<vector<int>> A,
                                vector<vector<int>> B,
                                vector<vector<int>> C,
                                int alpha,
                                int beta) {
    int M = A.size();
    int N = B[0].size();

    vector<vector<int>> S;
    for (int i = 0; i < M; i++) {
        vector<int> row_s;
        for (int j = 0; j < N; j++) {
            row_s.push_back(C[i][j]);
        }
        S.push_back(row_s);
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            int temp2 = 0;
            for (int k = 0; k < i; k++) {
                S[k][j] += alpha * B[i][j] * A[i][k];
                temp2 += B[k][j] * A[i][k];
            }
            S[i][j] = beta * S[i][j]
                      + alpha * B[i][j] * A[i][i]
                      + alpha * temp2;
        }
    }

    return S;
}
