#include <vector>
using namespace std;
// Cannot be processed. More than one top-level loop.
int mean_squared_error(vector<int> values) {
    int mean = 0;
    for (int i = 0; i < values.size(); i++)
        mean += values[i];
    mean = mean / values.size();

    vector<int> values_sublist;
    for (int x = 0; x < values.size(); x++)
        values_sublist.push_back(values[x] - mean);

    vector<int> mses;
    for (int y = 0; y < values.size(); y++)
        mses.push_back(values_sublist[y] * values_sublist[y]);

    int mes = 0;
    for (int i = 0; i < mses.size(); i++)
        mes += mses[i];

    return mes;
}
