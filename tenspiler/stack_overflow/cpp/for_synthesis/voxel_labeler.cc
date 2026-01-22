#include <vector>
#include <cmath>
using namespace std;

vector<vector<vector<int>>> voxel_labeler(
    vector<vector<vector<int>>> image_input,
    vector<vector<int>> locations,
    vector<vector<vector<int>>> iter_range)
{
    // euclidian_distances = np.sqrt(np.sum(np.square(locations), 1))
    vector<int> euclidian_distances;
    for (int r = 0; r < locations.size(); r++) {
        int sum_sq = 0;
        for (int c = 0; c < locations[0].size(); c++) {
            sum_sq += locations[r][c] * locations[r][c];
        }
        euclidian_distances.push_back((int)std::sqrt(sum_sq));
    }

    // euclidian_distances_inverse = zeros; inverse where distances != 0
    vector<int> euclidian_distances_inverse;
    for (int i = 0; i < euclidian_distances.size(); i++) {
        if (euclidian_distances[i] != 0)
            euclidian_distances_inverse.push_back(1 / euclidian_distances[i]);
        else
            euclidian_distances_inverse.push_back(0);
    }

    // label = zeros((D,H,W))
    vector<vector<vector<int>>> label;
    int D = image_input.size();
    int H = image_input[0].size();
    int W = image_input[0][0].size();
    for (int d = 0; d < D; d++) {
        vector<vector<int>> plane;
        for (int h = 0; h < H; h++) {
            vector<int> row;
            for (int w = 0; w < W; w++) row.push_back(0);
            plane.push_back(row);
        }
        label.push_back(plane);
    }

    for (int i = 0; i < iter_range.size(); i++) {
        for (int j = 0; j < iter_range[0].size(); j++) {
            for (int k = 0; k < iter_range[0][0].size(); k++) {

                // all_values_neighborhood = zeros((locations.shape[0],))
                vector<int> all_values_neighborhood;
                for (int loc_idx = 0; loc_idx < locations.size(); loc_idx++) {
                    int v = image_input[locations[loc_idx][0] + i + 1]
                                       [locations[loc_idx][1] + j + 1]
                                       [locations[loc_idx][2] + k + 1];
                    all_values_neighborhood.push_back(v);
                }

                // centre_minus_rest = centre - all_values_neighborhood
                vector<int> centre_minus_rest;
                int centre_val = image_input[i + 1][j + 1][k + 1];
                for (int loc_idx = 0; loc_idx < all_values_neighborhood.size(); loc_idx++) {
                    centre_minus_rest.push_back(centre_val - all_values_neighborhood[loc_idx]);
                }

                // if np.all(centre_minus_rest < 0, 0)
                int all_less_than_zero = 1;
                for (int loc_idx = 0; loc_idx < centre_minus_rest.size(); loc_idx++) {
                    if (!(centre_minus_rest[loc_idx] < 0)) {
                        all_less_than_zero = 0;
                        break;
                    }
                }

                if (all_less_than_zero == 1) {
                    label[i + 1][j + 1][k + 1] = 13;
                } else {
                    // centre_minus_rest_divided = centre_minus_rest * euclidian_distances_inverse
                    // centre_minus_rest_divided[13] = -100
                    vector<int> centre_minus_rest_divided;
                    for (int loc_idx = 0; loc_idx < centre_minus_rest.size(); loc_idx++) {
                        if (loc_idx == 13)
                            centre_minus_rest_divided.push_back(-100);
                        else
                            centre_minus_rest_divided.push_back(
                                centre_minus_rest[loc_idx] * euclidian_distances_inverse[loc_idx]
                            );
                    }

                    // class_label = argmax(centre_minus_rest_divided)
                    int class_label = 0;
                    int best_val = centre_minus_rest_divided[0];
                    for (int idx = 1; idx < centre_minus_rest_divided.size(); idx++) {
                        if (centre_minus_rest_divided[idx] > best_val) {
                            best_val = centre_minus_rest_divided[idx];
                            class_label = idx;
                        }
                    }

                    label[i + 1][j + 1][k + 1] = class_label;
                }
            }
        }
    }

    return label;
}
