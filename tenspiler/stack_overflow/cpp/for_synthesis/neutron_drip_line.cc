#include <vector>
#include <cmath>
using namespace std;

vector<vector<int>> neuron_drip_line(vector<int> A, vector<int> N)
{
    double avol = 15.5;
    double asurf = 16.8;
    double acol = 0.72;
    int asym = 23;

    vector<int> Z;
    vector<vector<int>> ss;

    int n = A.size();

    for (int i = 0; i < n; i++)
        Z.push_back(0);

    for (int i = 0; i < n; i++) {
        vector<int> row;
        for (int j = 0; j < n; j++)
            row.push_back(0);
        ss.push_back(row);
    }

    for (int i = 0; i < n; i++) {
        Z[i] = (A[i] / 2) * (1.0 / (1.0 + 0.25 * pow(A[i], 2.0 / 3.0) * (acol / asym)));
        N[i] = A[i] - Z[i];
    }

    for (int j = 0; j < Z.size(); j++) {
        for (int k = 0; k < Z.size(); k++) {
            int Zj = Z[j];
            int Nkplus1 = N[k + 1];
            int Nk = N[k];

            vector<int> apar1;
            apar1.push_back(0);

            bool zjeven = (Zj % 2) == 0;
            if (((Zj + Nkplus1) % 2 == 0) && zjeven)
                apar1[0] = 34;
            else if (((Zj + Nkplus1) % 2 != 0) && (!zjeven))
                apar1[0] = -34;

            vector<int> apar2;
            apar2.push_back(0);

            if (((Zj + Nk) % 2 == 0) && zjeven)
                apar2[0] = 34;
            else if (((Zj + Nk) % 2 != 0) && (!zjeven))
                apar2[0] = -34;

            double f4kplus1 =
                avol * (Zj + Nkplus1) -
                asurf * pow(Zj + Nkplus1, 2.0 / 3.0) -
                (acol * Zj * (Zj - 1)) / pow(Zj + Nkplus1, 1.0 / 3.0) -
                asym * pow((Zj + Nkplus1) - 2 * Zj, 2) / (Zj + Nkplus1) +
                apar1[0] / pow(Zj + Nkplus1, 3.0 / 4.0);

            double f4k =
                avol * (Zj + Nk) -
                asurf * pow(Zj + Nk, 2.0 / 3.0) -
                (acol * Zj * (Zj - 1)) / pow(Zj + Nk, 1.0 / 3.0) -
                asym * pow((Zj + Nk) - 2 * Zj, 2) / (Zj + Nk) +
                apar2[0] / pow(Zj + Nk, 3.0 / 4.0);

            int s = f4kplus1 - f4k;
            ss[j][k] = s;
        }
    }

    return ss;
}
