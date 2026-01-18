#include <vector>
using namespace std;

vector<vector<int>> matinit(int M, int N, int val) {
    vector<vector<int>> A;
    for (int i = 0; i < M; ++i) {
        vector<int> row;
        for (int j = 0; j < N; ++j) {
            row.push_back(val);
        }
        A.push_back(row);
    }
    return A;
}