#include <vector>
#include <cmath>

using namespace std;
// Cannot be processed. More than two nested loops.
vector<int> cosine_between_angles_of_triplets_in_rows(vector<vector<int>> A) {
    vector<int> effective_angles;
    int m = A.size();
    int n = A[0].size();

    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < m; ++j) {
            for (int k = 0; k < m; ++k) {
                if ((i != j) && (k > i) && (j != k)) {
                    // d1 = A[i] - A[j]
                    vector<int> d1;
                    for (int l = 0; l < n; ++l) {
                        d1.push_back(A[i][l] - A[j][l]);
                    }

                    // d2 = A[k] - A[j]
                    vector<int> d2;
                    for (int l = 0; l < n; ++l) {
                        d2.push_back(A[k][l] - A[j][l]);
                    }

                    // d1_norm = sqrt(sum(square(d1)))
                    int d1_sq_sum = 0;
                    for (int l = 0; l < n; ++l) {
                        d1_sq_sum += d1[l] * d1[l];
                    }
                    int d1_norm = sqrt(d1_sq_sum);

                    // d2_norm = sqrt(sum(square(d2)))
                    int d2_sq_sum = 0;
                    for (int l = 0; l < n; ++l) {
                        d2_sq_sum += d2[l] * d2[l];
                    }
                    int d2_norm = sqrt(d2_sq_sum);

                    // d1_unit = d1 / d1_norm
                    vector<int> d1_unit;
                    for (int l = 0; l < n; ++l) {
                        d1_unit.push_back(d1[l] / d1_norm);
                    }

                    // d2_unit = d2 / d2_norm
                    vector<int> d2_unit;
                    for (int l = 0; l < n; ++l) {
                        d2_unit.push_back(d2[l] / d2_norm);
                    }

                    // ang = sum(d1_unit * d2_unit)
                    int ang = 0;
                    for (int l = 0; l < n; ++l) {
                        ang += d1_unit[l] * d2_unit[l];
                    }

                    effective_angles.push_back(ang);
                }
            }
        }
    }
    return effective_angles;
}