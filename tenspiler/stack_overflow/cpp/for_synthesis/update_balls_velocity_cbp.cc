#include <vector>
#include <cmath>
using namespace std;
// Cannot be processed. Unsupported math function.
vector<vector<int>> update_velocities(vector<vector<int>> v,
                                                   vector<vector<int>> xy,
                                                   int threshold) {
    vector<vector<int>> v_new;
    for (int i = 0; i < v.size(); i++) {
        vector<int> row_vec;
        row_vec.push_back(v[i][0]);
        row_vec.push_back(v[i][1]);
        v_new.push_back(row_vec);
    }

    for (int i = 0; i < v.size(); i++) {
        for (int j = 0; j < v.size(); j++) {
            if (i != j) {
                int dx = xy[j][0] - xy[i][0];
                int dy = xy[j][1] - xy[i][1];
                double distance = sqrt((double)(dx * dx + dy * dy));
                if (distance < threshold) {
                    v_new[i][0] = v[j][0];
                    v_new[i][1] = v[j][1];
                    v_new[j][0] = v[i][0];
                    v_new[j][1] = v[i][1];
                }
            }
        }
    }
    return v_new;
}
