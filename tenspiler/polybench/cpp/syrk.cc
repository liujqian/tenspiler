#include <vector>
using namespace std;

vector<vector<int>> kernel_syrk(vector<vector<int>> A,
                                vector<vector<int>> C,
                                int alpha,
                                int beta) {
    int N = C.size();
    int M = A[0].size();

    vector<vector<int>> S;
    for (int i = 0; i < N; i++) {
        vector<int> row_s;
        for (int j = 0; j < N; j++) {
            row_s.push_back(C[i][j]);
        }
        S.push_back(row_s);
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j <= i; j++) {
            S[i][j] = S[i][j] * beta;
        }
        for (int k = 0; k < M; k++) {
            for (int j = 0; j <= i; j++) {
                S[i][j] += alpha * A[i][k] * A[j][k];
            }
        }
    }

    return S;
}
