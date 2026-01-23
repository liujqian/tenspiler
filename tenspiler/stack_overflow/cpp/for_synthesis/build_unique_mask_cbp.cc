#include <vector>

using namespace std;
// Cannot be processed. Indexed update.
vector<int> build_unique_mask(vector<vector<int>> A, int hMax, vector<int> unique_x) {
    // mask = np.zeros((A.shape[0],), dtype=bool)
    // Manually initialize mask instead of using constructor arguments
    vector<int> mask;
    for (int i = 0; i < A.size(); ++i) {
        mask.push_back(0);
    }

    // for idx in range(unique_x.shape[0]):
    for (int idx = 0; idx < unique_x.size(); ++idx) {
        int x = unique_x[idx];

        // Simulate boolean indexing: cur_mask = A[:, 0] == x
        // and collect selected_z_values = A[:, 2][cur_mask]
        vector<int> selected_indices;
        vector<int> selected_z_values;
        for (int i = 0; i < A.size(); ++i) {
            if (A[i][0] == x) {
                selected_indices.push_back(i);
                selected_z_values.push_back(A[i][2]);
            }
        }

        if (selected_z_values.size() == 0) {
            continue;
        }

        // zMax = np.max(selected_z_values, 0)
        int zMax = selected_z_values[0];
        for (int i = 1; i < selected_z_values.size(); ++i) {
            if (selected_z_values[i] > zMax) {
                zMax = selected_z_values[i];
            }
        }

        // mask[cur_mask] = np.logical_not(selected_z_values < zMax - hMax)
        for (int i = 0; i < selected_indices.size(); ++i) {
            int original_idx = selected_indices[i];
            int z_val = selected_z_values[i];

            // Translate logical_not(val < zMax - hMax)
            if (!(z_val < zMax - hMax)) {
                mask[original_idx] = 1;
            } else {
                mask[original_idx] = 0;
            }
        }
    }
    return mask;
}