#include <vector>

using namespace std;

int max_temp_in_thirty_days(vector<int> data, vector<int> periods) {
    int maxtemp = -2147483647; // Representing negative infinity
    for (int i = 0; i < periods.size(); ++i) {
        int temp = 0;
        for (int j = 0; j < 30; ++j) {
            temp = temp + data[i + j];
        }
        if (temp > maxtemp) {
            maxtemp = temp;
        }
    }
    return maxtemp;
}