#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<vector<vector<vector<int>>>> lat_lon_time_indexed_arrays(vector<vector<vector<int>>> ndvi,
                                                                vector<vector<vector<int>>> temperature) {
    vector<vector<vector<int>>> ts_1;
    vector<vector<vector<int>>> ts_2;

    int lat = ndvi.size();
    int lon = ndvi[0].size();
    int time = ndvi[0][0].size();

    for (int i = 0; i < lat; i++) {
        vector<vector<int>> ts1_lat;
        vector<vector<int>> ts2_lat;
        for (int j = 0; j < lon; j++) {
            vector<int> ts1_lon;
            vector<int> ts2_lon;
            for (int im_n = 0; im_n < time; im_n++) {
                ts1_lon.push_back(ndvi[i][j][im_n]);
                ts2_lon.push_back(temperature[i][j][im_n]);
            }
            ts1_lat.push_back(ts1_lon);
            ts2_lat.push_back(ts2_lon);
        }
        ts_1.push_back(ts1_lat);
        ts_2.push_back(ts2_lat);
    }

    vector<vector<vector<vector<int>>>> out;
    out.push_back(ts_1);
    out.push_back(ts_2);
    return out;
}
