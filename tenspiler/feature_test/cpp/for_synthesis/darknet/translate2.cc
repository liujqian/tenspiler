#include <vector>
using namespace std;

vector<int> translate2(vector<int> a, int n, int s, vector<int> b)
{
    int i;
    for (i = 0; i < n; ++i) {
        b[i] = a[i] + s;
    }
    return b;
}

