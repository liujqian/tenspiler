#include <vector>
using namespace std;

vector<vector<int>> kernel_3mm(vector<vector<int>> A,
                               vector<vector<int>> B,
                               vector<vector<int>> C,
                               vector<vector<int>> D) {
    int M = A.size();
    int K = A[0].size();
    int N = B[0].size();
    int P = C[0].size();
    int L = D[0].size();

    // E: (M, N) = A(M,K) * B(K,N)
    vector<vector<int>> E;
    for (int i = 0; i < M; i++) {
        vector<int> row_e;
        for (int j = 0; j < N; j++) {
            int val = 0;
            for (int k = 0; k < K; k++) {
                val += A[i][k] * B[k][j];
            }
            row_e.push_back(val);
        }
        E.push_back(row_e);
    }

    // F: (N, L) = C(N,P) * D(P,L)
    vector<vector<int>> F;
    for (int i = 0; i < N; i++) {
        vector<int> row_f;
        for (int j = 0; j < L; j++) {
            int val = 0;
            for (int k = 0; k < P; k++) {
                val += C[i][k] * D[k][j];
            }
            row_f.push_back(val);
        }
        F.push_back(row_f);
    }

    // G: (M, L) = E(M,N) * F(N,L)
    vector<vector<int>> G;
    for (int i = 0; i < M; i++) {
        vector<int> row_g;
        for (int j = 0; j < L; j++) {
            int val = 0;
            for (int k = 0; k < N; k++) {
                val += E[i][k] * F[k][j];
            }
            row_g.push_back(val);
        }
        G.push_back(row_g);
    }

    return G;
}
