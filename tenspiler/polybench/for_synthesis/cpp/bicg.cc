#include <vector>
using namespace std;
// Not all results are returned.

vector<int> kernel_bicg(vector<vector<int>> A,vector<int> p,vector<int> r) {
    int N = A.size();
    int M = A[0].size();

    // initialize s with zeros using push_back
    vector<int> s;
    for (int j = 0; j < M; j++) {
        s.push_back(0);
    }

    vector<int> q;

    for (int i = 0; i < N; i++) {
        int qi = 0;
        vector<int> new_s;

        for (int j = 0; j < M; j++) {
            int sj = s[j] + r[i] * A[i][j];
            new_s.push_back(sj);
            qi += A[i][j] * p[j];
        }

        s = new_s;
        q.push_back(qi);
    }

    return s;
}
