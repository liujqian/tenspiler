#include <vector>
using namespace std;

vector<int> structFunPython(vector<int> f, vector<int> sf2)
{
    vector<int> result;

    for (int i = 0; i < sf2.size(); i++) {
        int count = 0;
        int sf2_val = sf2[i];

        for (int j = 0; j < f.size(); j++) {
            if ((j >= 1) && (j < f.size() - i)) {
                int diff = f[i + j] - f[i];
                sf2_val = sf2_val + diff * diff;
                count = count + 1;
            }
        }

        result.push_back(sf2_val / count);
    }

    return result;
}
