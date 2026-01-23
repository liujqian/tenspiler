#include <vector>
using namespace std;

vector<int> qhat(vector<int> z_, vector<int> nk, vector<int> b, int Itot, vector<int> t_array, vector<int> rs)
{
    vector<int> qhat;
    for (int i = 0; i < t_array.size(); i++) {
        int r = rs[i];
        int val;
        if (r == 1) {
            val = b[r] * nk[r] / 2 * (t_array[i] * t_array[i] - z_[r + 1] * z_[r + 1]);
        } else if (r == z_.size() - 1) {
            val = b[r] * nk[r] / 2 * (t_array[i] * t_array[i] - z_[r - 1] * z_[r - 1]);
        } else {
            val = b[r] * nk[r] / 2 * (t_array[i] * t_array[i] - z_[r - 1] * z_[r - 1]);
        }
        qhat.push_back(val);
    }

    int qhat_const = 3;
    vector<int> final_qhat;
    for (int i = 0; i < qhat.size(); i++) {
        final_qhat.push_back(qhat[i] + qhat_const);
    }

    vector<int> tau;
    for (int i = 0; i < final_qhat.size(); i++) {
        tau.push_back(-(9 / Itot) * final_qhat[i]);
    }
    return tau;
}
