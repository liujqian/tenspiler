#include <vector>
using namespace std;

vector<int> translate9(vector<int> a, int n, int s)
{
    int i;
    vector<int> temp;
    for (i = 0; i < n; ++i) {
        temp.push_back(a[i]+s);
    }
    for (i = 0; i < n; ++i) {
        temp[i] = a[i] - s;
    }
    return temp;
}

