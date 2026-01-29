#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> kernel_trmm(vector<vector<int>> A,
                                vector<vector<int>> B,
                                int alpha) {
    int M = B.size();
    int N = B[0].size();

    vector<vector<int>> S;
    for (int i = 0; i < M; i++) {
        vector<int> row_s;
        for (int j = 0; j < N; j++) {
            row_s.push_back(B[i][j]);
        }
        S.push_back(row_s);
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = i + 1; k < A.size(); k++) {
                S[i][j] += A[k][i] * S[k][j];
            }
            S[i][j] = alpha * S[i][j];
        }
    }

    return S;
}
