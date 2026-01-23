#include <vector>

using namespace std;

vector<vector<int>> mask_generation(vector<int> V) {
    vector<vector<int>> x;
    for (int i = 0; i < V.size(); ++i) {
        vector<int> row_vec;
        for (int j = 0; j < 20; ++j) {
            if (j < V[i]) {
                row_vec.push_back(1);
            } else {
                row_vec.push_back(0);
            }
        }
        x.push_back(row_vec);
    }
    return x;
}