#include <vector>
using namespace std;

vector<int> translate0(vector<int> a, int n, int s)
{
    int i;
    vector<int> res;
    for (i = 0; i < n; ++i) {
        res.push_back(a[i]+s);
    }
    return res;
}

