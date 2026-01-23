#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> mult_big(vector<vector<int>> A,
                                vector<vector<int>> B,
                                vector<vector<int>> C, int M, int N) {
    vector<vector<int>> newC;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            int sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += A[i][k] * B[k][j];
            }
            row.push_back(sum);
        }
        newC.push_back(row);
    }
    return newC;
}