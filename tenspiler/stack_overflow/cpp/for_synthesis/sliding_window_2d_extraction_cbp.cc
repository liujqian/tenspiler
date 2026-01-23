#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<vector<vector<int>>>> sliding_window_2d_extraction(vector<vector<int>> image,
                                                                 vector<vector<vector<vector<int>>>> results)
{
    int m = results.size();
    int window_size = results[0][0].size();

    for (int i = 0; i < m; i++) {
        for (int j = 0; j < m; j++) {
            for (int r = 0; r < window_size; r++) {
                for (int c = 0; c < window_size; c++) {
                    results[i][j][r][c] = image[i + r][j + c];
                }
            }
        }
    }
    return results;

    return results;
}
