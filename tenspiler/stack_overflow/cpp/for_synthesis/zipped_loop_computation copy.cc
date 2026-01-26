#include <vector>
using namespace std;

vector<vector<int>> zipped_loop_computation(vector<int> a, vector<int> b, vector<int> d, vector<int> e)
{
    vector<vector<int>> c;
    int n = d.size();
    int m = a.size();

    for (int i = 0; i < n; i++) {
        vector<int> row_vec;

        // Python: c[i, 0:c.shape[1]] = ((b * (25.0 - a)) / (8 * e[i])) + d[i]
        for (int j = 0; j < m; j++) {
            int val = (b[j] * (25 - a[j]) / 8 * e[i]) + d[i];
            row_vec.push_back(val);
        }

        c.push_back(row_vec);
    }

    return c;
}
