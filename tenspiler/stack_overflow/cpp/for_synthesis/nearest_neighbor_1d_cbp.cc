#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> find_nnearest(vector<int> arr, vector<int> val, vector<int> N) {
    vector<vector<int>> idxs;

    // idxs = np.zeros((N.shape[0], val.shape[0]))
    for (int r = 0; r < N.size(); r++) {
        vector<int> row_vec;
        for (int c = 0; c < val.size(); c++) {
            row_vec.push_back(0);
        }
        idxs.push_back(row_vec);
    }

    for (int i = 0; i < val.size(); i++) {
        // Compute |arr[j] - val[i]| explicitly
        vector<int> dist;
        for (int j = 0; j < arr.size(); j++) {
            int d = arr[j] - val[i];
            if (d < 0)
                d = -d;
            dist.push_back(d);
        }

        // argsort(dist)
        vector<int> order;
        for (int j = 0; j < arr.size(); j++) {
            order.push_back(j);
        }

        for (int a = 0; a < order.size(); a++) {
            for (int b = 0; b + 1 < order.size(); b++) {
                int ib = order[b];
                int in = order[b + 1];
                if (dist[ib] > dist[in]) {
                    int tmp = order[b];
                    order[b] = order[b + 1];
                    order[b + 1] = tmp;
                }
            }
        }

        // idx = first N.shape[0] elements
        vector<int> idx;
        for (int k = 0; k < N.size(); k++) {
            idx.push_back(order[k]);
        }

        // idxs[0:N.shape[0], i] = idx
        for (int r = 0; r < N.size(); r++) {
            idxs[r][i] = idx[r];
        }
    }

    return idxs;
}
