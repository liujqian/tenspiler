#include <vector>
using namespace std;

vector<int> lerp(int N, vector<int> a, vector<int> b, int t) {
    vector<int> result;
    for (int i = 0; i < N; ++i) {
        int interp = t * a[i] + (1 - t) * b[i];
        result.push_back(interp);
    }
    return result;
}