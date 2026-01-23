#include <vector>
using namespace std;

vector<int> normalize_vector(vector<int> x, int b)
{
    vector<int> y;

    int m = 0;
    for (int i = 0; i < x.size(); i++) {
        int ax = x[i];
        if (ax < 0)
            ax = -ax;
        if (ax > m)
            m = ax;
    }

    int two_pow_b = 1;
    for (int i = 0; i < b; i++)
        two_pow_b = two_pow_b * 2;

    for (int i = 0; i < x.size(); i++) {
        if (x[i] > 0) {
            y.push_back((two_pow_b - 1) * x[i] / m);
        } else if (x[i] < 0) {
            y.push_back(two_pow_b * x[i] / m);
        } else {
            y.push_back(0);
        }
    }

    return y;
}
