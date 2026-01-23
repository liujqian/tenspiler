#include <vector>
using namespace std;
// Cannot be processed. Indexed update.
vector<vector<int>> add_at_coordinates(vector<vector<int>> coord, vector<int> amounts)
{
    vector<vector<int>> total;
    for (int i = 0; i < 3; i++) {
        vector<int> row;
        for (int j = 0; j < 4; j++){
            row.push_back(0);
        }
        total.push_back(row);
    }

    vector<int> x;
    vector<int> y;
    for (int i = 0; i < coord.size(); i++) {
        x.push_back(coord[i][0]);
        y.push_back(coord[i][1]);
    }

    for (int i = 0; i < amounts.size(); i++) {
        total[x[i]][y[i]] = total[x[i]][y[i]] + amounts[i];
    }

    return total;
}
