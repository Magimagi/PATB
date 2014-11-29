#include <bits/stdc++.h>
using namespace std;
bool err[305];
int main() {
    string a, b;
    getline(cin, a);
    getline(cin, b);
    for (int i = 0; i < a.length(); ++i)
        err[a[i]] = true;
    for (int i = 0; i < b.length(); ++i) {
        if (isalpha(b[i]) && err[toupper(b[i])])
            continue;
        if (err[b[i]])
            continue;
        if (err['+'] && isupper(b[i]))
            continue;
        putchar(b[i]);
    }
    puts("");
    return 0;
}
