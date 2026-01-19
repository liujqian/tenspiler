#include <vector>
using namespace std;

vector<vector<int>> matrix1(int M, int N,
                               vector<vector<int>> A,
                               vector<vector<int>> B) {
    vector<vector<int>> C;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = 0.0;
            for (int k = 0; k < N; ++k) {
                sum += A[j][k] * B[i][k];
            }
            row.push_back(sum);
        }
        C.push_back(row);
    }
    return C;
}