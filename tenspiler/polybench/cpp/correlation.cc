#include <vector>
#include <cmath>
using namespace std;


vector<vector<int>> kernel_correlation(vector<vector<int>> data, int float_n) {
    int N = data.size();
    int M = data[0].size();
    double eps = 0.1;

    vector<int> mean;
    for (int j = 0; j < M; j++) {
        int sum = 0;
        for (int i = 0; i < N; i++) {
            sum += data[i][j];
        }
        mean.push_back(sum / float_n);
    }

    vector<int> stddev;
    for (int j = 0; j < M; j++) {
        int sum = 0;
        for (int i = 0; i < N; i++) {
            int diff = data[i][j] - mean[j];
            sum += diff * diff;
        }
        double val = sum / float_n;
        double sd = std::sqrt(val);
        if (sd > eps)
            stddev.push_back(sd);
        else
            stddev.push_back(0);
    }

    vector<vector<int>> data_norm;
    for (int i = 0; i < N; i++) {
        vector<int> row;
        for (int j = 0; j < M; j++) {
            int val = data[i][j] - mean[j];
            val = val / (std::sqrt(float_n) * stddev[j]);
            row.push_back(val);
        }
        data_norm.push_back(row);
    }

    vector<vector<int>> corr;
    for (int i = 0; i < M; i++) {
        vector<int> row;
        for (int j = 0; j < M; j++) {
            int val;
            if (i == j) {
                val = 1;
            } else if (j < i) {
                val = corr[j][i];
            } else {
                val = 0;
                for (int k = 0; k < N; k++) {
                    val += data_norm[k][i] * data_norm[k][j];
                }
            }
            row.push_back(val);
        }
        corr.push_back(row);
    }

    return corr;
}
