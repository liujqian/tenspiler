#include <vector>
using namespace std;

vector<double> translate5(vector<double> a, int n, int s)
{
    int i;
    vector<double> res;
    for (i = 0; i < n; ++i) {
        res.push_back(a[i]+s);
    }
    return res;
}

