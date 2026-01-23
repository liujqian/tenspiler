#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> nested_dot_product_with_bounded_inner_indices(
    vector<vector<int>> arr1,
    vector<vector<int>> arr2)
{
    vector<vector<int>> inner_products;
    int n1 = arr1.size();
    int n2 = arr2.size();
    int d = arr1[0].size();

    for (int idx1 = 0; idx1 < n1; idx1++) {
        vector<int> vec1;
        for (int k = 0; k < d; k++) {
            vec1.push_back(arr1[idx1][k]);
        }

        vector<int> row_vec;
        for (int idx2 = 0; idx2 < n2; idx2++) {
            int val = 0;
            if (idx2 >= idx1) {
                vector<int> vec2;
                for (int k = 0; k < d; k++) {
                    vec2.push_back(arr2[idx2][k]);
                }

                for (int k = 0; k < d; k++) {
                    val += vec1[k] * vec2[k];
                }
            }
            row_vec.push_back(val);
        }
        inner_products.push_back(row_vec);
    }

    vector<vector<int>> final_inner_products;
    for (int i = 0; i < n1; i++) {
        vector<int> row_vec;
        for (int j = 0; j < n2; j++) {
            row_vec.push_back(inner_products[i][j] + inner_products[j][i]);
        }
        final_inner_products.push_back(row_vec);
    }

    for (int i = 0; i < n1; i++) {
        final_inner_products[i][i] = final_inner_products[i][i] / 2;
    }

    return final_inner_products;
}
