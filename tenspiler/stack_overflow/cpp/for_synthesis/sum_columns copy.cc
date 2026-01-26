#include <vector>
using namespace std;

vector<int> sum_columns(vector<vector<int>> a, int c)
{
    vector<int> results;
    int n = a[0].size();
    for (int i = 0; i < n; i++) {
        results.push_back(c * (a[0][i] + 2 * a[1][i] + 2 * a[2][i] + a[3][i]));
    }
    return results;
}
