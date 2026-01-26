#include <vector>

using namespace std;

vector<int> add_two_arrays_by_comparing_sizes(vector<int> a, vector<int> b) {
    // combined_result_arr = np.zeros((a.shape[0],), dtype=a.dtype)
    vector<int> combined_result_arr;
    for (int i = 0; i < a.size(); ++i) {
        // Initialize the element value to 0 (simulating np.zeros initialization)
        int current_val = 0;

        // if b[i] >= a[i]:
        if (b[i] >= a[i]) {
            // combined_result = a[i] + b[i]
            int combined_result = a[i] + b[i];
            // combined_result_arr[i] = combined_result
            current_val = combined_result;
        }

        // Use push_back to build the array
        combined_result_arr.push_back(current_val);
    }
    return combined_result_arr;
}