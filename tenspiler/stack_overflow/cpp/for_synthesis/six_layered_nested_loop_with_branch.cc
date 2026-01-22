#include <vector>
#include <cmath>
using namespace std;

vector<vector<vector<vector<vector<vector<vector<int>>>>>>> six_layered_nested_loop_with_branch(vector<int> R1, vector<int> L2)
{
    int nR = R1.size();
    int nL = L2.size();

    vector<vector<vector<vector<vector<vector<vector<int>>>>>>> inits(
        10,
        vector<vector<vector<vector<vector<vector<int>>>>>>(
            nR,
            vector<vector<vector<vector<vector<int>>>>>(
                nR,
                vector<vector<vector<vector<int>>>>(
                    nR,
                    vector<vector<vector<int>>>(
                        nL,
                        vector<vector<int>>(
                            nR,
                            vector<int>(nL, 0)
                        )
                    )
                )
            )
        )
    );

    vector<int> R2 = R1;

    vector<int> L1;
    for (int i = 0; i < nR; i++) {
        L1.push_back(-1 * R1[i]);
    }

    double dVl = 194329.0 / 1000.0;
    double dVr = 51936.0 / 1000.0;
    double dVg = 188384.0 / 1000.0;
    double DR = 0.0;
    double DB = 0.0;

    vector<int> m1;
    for (int i = 0; i < nR; i++) {
        m1.push_back((int)fabs(dVl / (double)R1[i]));
    }

    vector<int> m2;
    for (int i = 0; i < nL; i++) {
        m2.push_back((int)fabs(dVr / (double)L2[i]));
    }

    int j1 = 0;
    int j2 = 0;

    for (int i_idx = 0; i_idx < nR; i_idx++) {
        int i = R1[i_idx];
        for (int j_idx = 0; j_idx < R2.size(); j_idx++) {
            int j = R2[j_idx];
            for (int k_idx = 0; k_idx < L1.size(); k_idx++) {
                int k = L1[k_idx];
                for (int m_idx = 0; m_idx < nL; m_idx++) {
                    int m = L2[m_idx];
                    for (int n_idx = 0; n_idx < m1.size(); n_idx++) {
                        int n = m1[n_idx];
                        for (int q_idx = 0; q_idx < m2.size(); q_idx++) {
                            int q = m2[q_idx];

                            double p1 = ((j2 * (1.0 + (double)q) - (double)q) * (double)m + (double)j + dVr) / (double)i;
                            double p2 = 1.0 - j2 * (1.0 + (double)q) + (double)q
                                      - ((double)i / (double)m) * (1.0 - j1 * (1.0 + (double)n) + (double)n - p1)
                                      + dVg / (double)m;
                            double dVrchk = ((double)q - (j2 * (double)q) - (double)q) * (double)m + (p1 * (double)i) - (double)j + DR + DB;
                            double dVlchk = ((double)j1 - (double)n + (j1 * (double)n)) * (double)i + (double)k - (p2 * (double)m);

                            if (0.0 < p2 && p2 < 1.05 &&
                                0.0 < p1 && p1 < 1.05 &&
                                (dVl - 100.0) < dVlchk && dVlchk < (dVl + 100.0) &&
                                (dVr - 100.0) < dVrchk && dVrchk < (dVr + 100.0))
                            {
                                inits[0][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)i;
                                inits[1][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)j;
                                inits[2][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)k;
                                inits[3][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)m;
                                inits[4][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)p1;
                                inits[5][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)p2;
                                inits[6][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)n;
                                inits[7][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)q;
                                inits[8][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)dVrchk;
                                inits[9][i_idx][j_idx][k_idx][m_idx][n_idx][q_idx] = (int)dVlchk;
                            }
                        }
                    }
                }
            }
        }
    }

    return inits;
}
