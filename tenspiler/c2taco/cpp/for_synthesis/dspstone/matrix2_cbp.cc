#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> matrix2(int M, int N,
                               vector<vector<int>> A,
                               vector<vector<int>> B) {
    vector<vector<int>> C;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = A[j][0] * B[i][0];
            for (int k = 1; k < N; ++k) {
                sum += A[j][k] * B[i][k];
            }
            row.push_back(sum);
        }
        C.push_back(row);
    }
    return C;
}