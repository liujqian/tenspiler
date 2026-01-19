#include <vector>
using namespace std;

vector<int> histogram(int N) {
    vector<int> vec;
    for (int i = 0; i < N; ++i) {
        vec.push_back(0);
    }
    return vec;
}