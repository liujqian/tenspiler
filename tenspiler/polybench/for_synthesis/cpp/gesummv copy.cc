#include <vector>
using namespace std;

vector<vector<int>> kernel_gesummv(vector<vector<int>> A,
                                   vector<vector<int>> B,
                                   vector<int> x,
                                   int alpha,
                                   int beta) {
    int N = A.size();

    vector<int> tmp_out;
    vector<int> y_out;

    for (int i = 0; i < N; i++) {
        int tmp_val = 0;
        int y_val = 0;
        for (int j = 0; j < A[0].size(); j++) {
            tmp_val = A[i][j] * x[j] + tmp_val;
            y_val = B[i][j] * x[j] + y_val;
        }
        y_val = alpha * tmp_val + beta * y_val;

        tmp_out.push_back(tmp_val);
        y_out.push_back(y_val);
    }

    vector<vector<int>> result;
    result.push_back(tmp_out);
    result.push_back(y_out);

    return result;
}
