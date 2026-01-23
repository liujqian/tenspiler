#include <vector>
using namespace std;

vector<vector<int>> looped_copy(vector<vector<int>> u_50, vector<vector<int>> u)
{
    for (int i = 0; i < u_50.size(); i++) {
        for (int j = 0; j < u_50[0].size(); j++) {
            u_50[i][j] = u[i][j];
        }
    }
    return u_50;
}
