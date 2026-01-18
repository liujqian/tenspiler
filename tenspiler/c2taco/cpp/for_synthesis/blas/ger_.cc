#include <vector>
using namespace std;

vector<vector<int>> ger(int M, int N, vector<int> x, vector<int> y, vector<vector<int>> A) {
    vector<vector<int>> updatedA;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(A[i][j] + x[i] * y[j]);
        }
        updatedA.push_back(row);
    }
    return updatedA;
}