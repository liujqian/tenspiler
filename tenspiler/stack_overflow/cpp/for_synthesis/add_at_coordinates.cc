#include <vector>

using namespace std;

vector<vector<int>> add_at_coordinates(vector<vector<int>> coord, vector<int> amounts) {
    // total = np.zeros((3, 4))
    vector<vector<int>> total;
    for (int i = 0; i < 3; ++i) {
        vector<int> row;
        for (int j = 0; j < 4; ++j) {
            row.push_back(0);
        }
        total.push_back(row);
    }

    for (int i = 0; i < amounts.size(); ++i) {
        int x_coord = coord[i][0];
        int y_coord = coord[i][1];

        // total[x_coord, y_coord] = total[x_coord, y_coord] + amounts[i]
        total[x_coord][y_coord] = total[x_coord][y_coord] + amounts[i];
    }
    return total;
}