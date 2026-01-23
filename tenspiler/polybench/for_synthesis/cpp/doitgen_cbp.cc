#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<vector<int>>> kernel_doitgen(vector<vector<vector<int>>> A,
                                           vector<vector<int>> C4,
                                           vector<int> sum) {
    int nr = A.size();
    int nq = A[0].size();
    int np = sum.size();

    vector<vector<vector<int>>> S;

    for (int r = 0; r < nr; r++) {
        vector<vector<int>> rq_plane;
        for (int q = 0; q < nq; q++) {
            vector<int> local_sum;
            for (int p = 0; p < np; p++) {
                int acc = 0;
                for (int s = 0; s < np; s++) {
                    acc += A[r][q][s] * C4[s][p];
                }
                local_sum.push_back(acc);
            }

            vector<int> s_row;
            for (int p = 0; p < np; p++) {
                s_row.push_back(local_sum[p]);
            }
            rq_plane.push_back(s_row);
        }
        S.push_back(rq_plane);
    }

    return S;
}
