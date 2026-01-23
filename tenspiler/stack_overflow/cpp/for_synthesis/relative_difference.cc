#include <vector>
using namespace std;

vector<vector<int>> calculate_relative_difference(vector<int> a) {
    vector<vector<int>> rel_diff;
    int n = a.size();

    for (int j = 0; j < n; j++) {
        vector<int> row_vec;
        for (int i = 0; i < n; i++) {
            row_vec.push_back((a[j] - a[i]) / a[i] * 100);
        }
        rel_diff.push_back(row_vec);
    }
    return rel_diff;
}
