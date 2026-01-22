#include <vector>
using namespace std;

vector<int> supply_deman(vector<int> prices) {
    vector<int> y;
    int n = prices.size();

    for (int m = 0; m < n; m++) {
        int count = 0;
        for (int p = 0; p < n; p++) {
            if (prices[p] > prices[m]) {
                count = count + 1;
            }
        }
        y.push_back(count);
    }
    return y;
}
