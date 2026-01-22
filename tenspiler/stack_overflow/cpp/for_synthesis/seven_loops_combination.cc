#include <vector>
using namespace std;


vector<vector<vector<vector<vector<vector<vector<vector<int>>>>>>>> seven_loops_combination(int target,
                       vector<int> arr0, vector<int> arr1, vector<int> arr2,
                       vector<int> arr3, vector<int> arr4, vector<int> arr5,
                       vector<int> arr6)
{
    // NOTE/WARNING:
    // The Python code initializes arrays with NaN (a floating-point concept).
    // Since this translation must use vector<int>, NaN cannot be represented.
    // We use -1 as a placeholder "nan" value in the int arrays.
    int nan_val = -1;

    int K0 = (int)arr0.size();
    int K1 = (int)arr1.size();
    int K2 = (int)arr2.size();
    int K3 = (int)arr3.size();
    int K4 = (int)arr4.size();
    int K5 = (int)arr5.size();
    int K6 = (int)arr6.size();

    vector<vector<vector<vector<vector<vector<vector<vector<int>>>>>>>> lengths_list;
    vector<vector<vector<vector<vector<vector<vector<vector<int>>>>>>>> indices_list;

    // Build lengths_list and indices_list with shape (K0,K1,K2,K3,K4,K5,K6,7) filled with nan_val.
    for (int i = 0; i < K0; i++) {
        vector<vector<vector<vector<vector<vector<vector<int>>>>>>> dim1_lengths;
        vector<vector<vector<vector<vector<vector<vector<int>>>>>>> dim1_indices;

        for (int j = 0; j < K1; j++) {
            vector<vector<vector<vector<vector<vector<int>>>>>> dim2_lengths;
            vector<vector<vector<vector<vector<vector<int>>>>>> dim2_indices;

            for (int k = 0; k < K2; k++) {
                vector<vector<vector<vector<vector<int>>>>> dim3_lengths;
                vector<vector<vector<vector<vector<int>>>>> dim3_indices;

                for (int l = 0; l < K3; l++) {
                    vector<vector<vector<vector<int>>>> dim4_lengths;
                    vector<vector<vector<vector<int>>>> dim4_indices;

                    for (int m = 0; m < K4; m++) {
                        vector<vector<vector<int>>> dim5_lengths;
                        vector<vector<vector<int>>> dim5_indices;

                        for (int n = 0; n < K5; n++) {
                            vector<vector<int>> dim6_lengths;
                            vector<vector<int>> dim6_indices;

                            for (int o = 0; o < K6; o++) {
                                vector<int> last_lengths;
                                vector<int> last_indices;
                                for (int t = 0; t < 7; t++) {
                                    last_lengths.push_back(nan_val);
                                    last_indices.push_back(nan_val);
                                }
                                dim6_lengths.push_back(last_lengths);
                                dim6_indices.push_back(last_indices);
                            }

                            dim5_lengths.push_back(dim6_lengths);
                            dim5_indices.push_back(dim6_indices);
                        }

                        dim4_lengths.push_back(dim5_lengths);
                        dim4_indices.push_back(dim5_indices);
                    }

                    dim3_lengths.push_back(dim4_lengths);
                    dim3_indices.push_back(dim4_indices);
                }

                dim2_lengths.push_back(dim3_lengths);
                dim2_indices.push_back(dim3_indices);
            }

            dim1_lengths.push_back(dim2_lengths);
            dim1_indices.push_back(dim2_indices);
        }

        lengths_list.push_back(dim1_lengths);
        indices_list.push_back(dim1_indices);
    }

    for (int i = 0; i < K0; i++) {
        int sum_i = arr0[i];
        if (sum_i <= target) {
            for (int j = 0; j < K1; j++) {
                int sum_j = sum_i + arr1[j];
                if (sum_j <= target) {
                    for (int k = 0; k < K2; k++) {
                        int sum_k = sum_j + arr2[k];
                        if (sum_k <= target) {
                            for (int l = 0; l < K3; l++) {
                                int sum_l = sum_k + arr3[l];
                                if (sum_l <= target) {
                                    for (int m = 0; m < K4; m++) {
                                        int sum_m = sum_l + arr4[m];
                                        if (sum_m <= target) {
                                            for (int n = 0; n < K5; n++) {
                                                int sum_n = sum_m + arr5[n];
                                                if (sum_n <= target) {
                                                    for (int o = 0; o < K6; o++) {
                                                        int total = sum_n + arr6[o];
                                                        if (total == target) {
                                                            lengths_list[i][j][k][l][m][n][o][0] = arr0[i];
                                                            lengths_list[i][j][k][l][m][n][o][1] = arr1[j];
                                                            lengths_list[i][j][k][l][m][n][o][2] = arr2[k];
                                                            lengths_list[i][j][k][l][m][n][o][3] = arr3[l];
                                                            lengths_list[i][j][k][l][m][n][o][4] = arr4[m];
                                                            lengths_list[i][j][k][l][m][n][o][5] = arr5[n];
                                                            lengths_list[i][j][k][l][m][n][o][6] = arr6[o];

                                                            indices_list[i][j][k][l][m][n][o][0] = i;
                                                            indices_list[i][j][k][l][m][n][o][1] = j;
                                                            indices_list[i][j][k][l][m][n][o][2] = k;
                                                            indices_list[i][j][k][l][m][n][o][3] = l;
                                                            indices_list[i][j][k][l][m][n][o][4] = m;
                                                            indices_list[i][j][k][l][m][n][o][5] = n;
                                                            indices_list[i][j][k][l][m][n][o][6] = o;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    return  indices_list;
}
