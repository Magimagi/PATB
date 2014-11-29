#include <bits/stdc++.h>
using namespace std;
bool opt = false;
int w[] = {7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2};
char c[] = "10X98765432";
string s;
bool check() {
    int t = 0;
    for (int i = 0; i < 17; ++i) {
        if (!isdigit(s[i]))
            return false;
        t += (s[i] - '0') * w[i];
    }
    t %= 11;
    if (s[17] != c[t])
        return false;
    return true;
}
int main() {
    int n;
    scanf("%d\n", &n);
    for (int i = 1; i <= n; ++i) {
        cin >> s;
        if (!check()) {
            cout << s << endl;
            opt = true;
        }
    }
    if (!opt)
        puts("All passed");
    return 0;
}
