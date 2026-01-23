#include <vector>
using namespace std;

vector<int> translate1(vector<int> a, int n, int s)
{
    int i;
    vector<int> res;
    vector<int> temp;
    for (i = 0; i < n; ++i) {
        temp.push_back(a[i]+s);
    }
    for (i = 0; i < n; ++i) {
        res.push_back(temp[i]+s);
    }
    return res;
}

