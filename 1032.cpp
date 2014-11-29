#include <bits/stdc++.h>
using namespace std;
int s[100005];
vector<pair<int, int> > V;
int main() {
    int n, a, b, tot = 0;
    scanf("%d", &n);
    for (int i = 1; i <= n; ++i) {
        scanf("%d%d", &a, &b);
        s[a] += b;
        tot = max(tot, a);
    }
    for (int i = 1; i <= tot; ++i)
        V.push_back(make_pair(s[i], i));
    sort(V.begin(), V.end(), greater<pair<int, int> >());
    printf("%d %d\n", V.begin()->second, V.begin()->first);
    return 0;
}
