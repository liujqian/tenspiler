#include <vector>

using namespace std;

vector<int> vfill(vector<int> arr, int v) {
    vector<int> S;
    int n = arr.size();
    for (int i = 0; i < n; ++i) {
        S.push_back(v);
    }
    return S;
}