#include <vector>
using namespace std;

vector<vector<int>> jarccard_similarity(vector<vector<int>> data)
{
    vector<vector<int>> jarccard_similarities;
    int n = data.size();
    int m = data[0].size();

    for (int i = 0; i < n; i++) {
        vector<int> row_vec;
        for (int j = 0; j < n; j++) {
            if (i == j) {
                row_vec.push_back(1);
            } else {
                int a = 0;
                int b = 0;
                int c = 0;

                for (int k = 0; k < m; k++) {
                    int di = data[i][k] != 0;
                    int dj = data[j][k] != 0;

                    if (di && dj)
                        a += 1;
                    if (di && (!dj))
                        b += 1;
                    if ((!di) && dj)
                        c += 1;
                }

                if (a + b + c == 0) {
                    row_vec.push_back(0);
                } else {
                    row_vec.push_back(a / (a + b + c));
                }
            }
        }
        jarccard_similarities.push_back(row_vec);
    }
    return jarccard_similarities;
}
