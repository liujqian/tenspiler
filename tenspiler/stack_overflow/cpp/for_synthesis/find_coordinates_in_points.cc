#include <vector>
using namespace std;

vector<vector<int>> find_coordinates_in_points(vector<vector<int>> coordinates, vector<int> points)
{
    vector<int> indices;
    for (int i = 0; i < coordinates.size(); i++)
        indices.push_back(i);

    vector<int> found_indices;
    for (int i = 0; i < points.size(); i++) {
        vector<int> selected_indices;
        for (int j = 0; j < coordinates.size(); j++) {
            if (coordinates[j][0] == points[i])
                selected_indices.push_back(indices[j]);
        }
        found_indices.push_back(selected_indices[0]);
    }

    vector<vector<int>> result;
    for (int i = 0; i < found_indices.size(); i++) {
        vector<int> row_vec;
        for (int j = 0; j < coordinates[0].size(); j++)
            row_vec.push_back(coordinates[found_indices[i]][j]);
        result.push_back(row_vec);
    }
    return result;
}
