#include <vector>
using namespace std;


// Cannot be processed. More than one top-level loop.
vector<vector<int>>  kernel_covariance(vector<vector<int>> data, int float_n) {
    int N = data.size();
    int M = data[0].size();

    // Compute mean
    vector<int> mean;
    for (int j = 0; j < M; j++) {
        int sum = 0;
        for (int i = 0; i < N; i++) {
            sum += data[i][j];
        }
        mean.push_back(sum / float_n);
    }

    // Compute data_centered
    vector<vector<int>> data_centered;
    for (int i = 0; i < N; i++) {
        vector<int> row;
        for (int j = 0; j < M; j++) {
            row.push_back(data[i][j] - mean[j]);
        }
        data_centered.push_back(row);
    }

    // Compute covariance matrix
    vector<vector<int>> cov;
    for (int i = 0; i < M; i++) {
        vector<int> row;
        for (int j = 0; j < M; j++) {
            int sum = 0;
            for (int k = 0; k < N; k++) {
                sum += data_centered[k][i] * data_centered[k][j];
            }
            row.push_back(sum / (float_n - 1));
        }
        cov.push_back(row);
    }

    return cov;
}
