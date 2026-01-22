#include <vector>
using namespace std;

vector<int> sum_elements_based_on_column_indices(vector<vector<int>> data, vector<int> results)
{
    int max_col1 = data[0][1];
    for (int i = 0; i < data.size(); i++) {
        if (data[i][1] > max_col1)
            max_col1 = data[i][1];
    }

    vector<int> zeros;
    for (int i = 0; i < max_col1; i++)
        zeros.push_back(0);

    vector<int> start;
    vector<int> end;
    vector<int> values;
    for (int i = 0; i < data.size(); i++) {
        start.push_back(data[i][0]);
        end.push_back(data[i][1]);
        values.push_back(data[i][2]);
    }

    for (int i = 0; i < start.size(); i++) {
        for (int j = start[i]; j < end[i]; j++) {
            zeros[j] = zeros[j] + values[i];
        }
    }
    return zeros;
}
