#include <vector>
using namespace std;

vector<vector<vector<int>>> calculate_form_elementwise_list(vector<vector<int>> a, int s)
{
    vector<vector<vector<int>>> result;
    int m = a.size();
    int n = a[0].size();

    for (int i = 0; i < m; i++) {
        vector<vector<int>> plane;
        for (int j = 0; j < n; j++) {
            vector<int> pair_vec;
            pair_vec.push_back(s);
            pair_vec.push_back(a[i][j]);
            plane.push_back(pair_vec);
        }
        result.push_back(plane);
    }
    return result;
}
