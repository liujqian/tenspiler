#include <vector>

using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<int>> calculate_intensities(vector<vector<int>> intensity, int intensity_max, vector<int> gamma) {
    int h = intensity.size();
    int w = intensity[0].size();


    // Initialize result with zeros to preserve control structure (cannot use push_back due to loop order)
    vector<vector<int>> result(h, vector<int>(w, 0));

    for (int index = 0; index < gamma.size(); ++index) {
        for (int l = 0; l < h; ++l) {
            for (int col = 0; col < w; ++col) {
                double val = intensity[l][col] * 255.0 + 1.0;
                int rounded_val = val;

                if (rounded_val == index) {
                    // np.pow(intensity[l, w] / intensity_max, gamma[index])
                    double base = intensity[l][col] / intensity_max;
                    int exp = gamma[index];

                    // Manual power loop
                    double pow_res = 1.0;
                    for (int k = 0; k < exp; ++k) {
                        pow_res *= base;
                    }

                    result[l][col] = (int)pow_res;
                }
            }
        }
    }
    return result;
}