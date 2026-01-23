#include <vector>
using namespace std;
// Cannot be processed. More than two nested loops.
vector<int> find_count_and_expected_count(vector<int> X, vector<int> Y)
{
    vector<int> count;
    vector<int> expected_count;
    count.push_back(0);
    expected_count.push_back(0);

    for (int i = 0; i < X.size(); i++) {
        for (int j = 0; j < X.size(); j++) {
            int sum_val = 0;
            for (int k = 0; k < X.size(); k++) {
                if (X[k] <= (i + 1) && Y[k] <= (j + 1))
                    sum_val += 1;
            }
            count[0] = count[0] + sum_val;
            expected_count[0] = expected_count[0] + (i + 1) * (j + 1) / X.size();
        }
    }

    vector<int> out;
    out.push_back(count[0]);
    out.push_back(expected_count[0]);
    return out;
}
