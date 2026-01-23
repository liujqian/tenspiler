#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> dct(vector<vector<int>> A,
                           vector<vector<int>> B,
                           vector<vector<int>> C,
                           vector<vector<int>> D,
                           int M, int N) {
    vector<vector<int>> tempD;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += A[i][k] * C[k][j];
            }
            row.push_back(sum);
        }
        tempD.push_back(row);
    }

    vector<vector<int>> newA;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += B[i][k] * tempD[k][j];
            }
            row.push_back(sum);
        }
        newA.push_back(row);
    }
    return newA;
}
