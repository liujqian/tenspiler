#include <vector>

using namespace std;

vector<vector<int>> compare_image_reflectance(vector<vector<vector<int>>> img, vector<int> reference_spectrum) {
    vector<vector<int>> result;
    for (int i = 0; i < img.size(); ++i) {
        vector<int> row_vec;
        for (int j = 0; j < img[i].size(); ++j) {
            int sum_val = 0;
            // Iterate over channels (k) to compute the sum of absolute differences
            for (int k = 0; k < img[i][j].size(); ++k) {
                int diff = img[i][j][k] - reference_spectrum[k];
                if (diff < 0) {
                    diff = -diff;
                }
                sum_val += diff;
            }
            row_vec.push_back(sum_val);
        }
        result.push_back(row_vec);
    }
    return result;
}