#include <vector>
#include <cmath>
using namespace std;

vector<int> translate7(vector<int> a, int n, int s)
{
    int i;
    vector<int> res;
    for (i = 0; i < n; ++i) {
        res.push_back(pow(a[i], s));
    }
    return res;
}

