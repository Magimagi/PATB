/*
 * File: 1028.cpp
 * Author: Magica
 * Date: 2014.09.08
 ****************************************/
#include <bits/stdc++.h>
using namespace std;
int main()
{
    string date, name;
    string mx, mxname, mn, mnname;
    int i, n, tot = 0;
    cin >> n;
    bool first = true;
    for (i = 0; i < n; ++i) {
        cin >> name >> date;
        if (date >= "1814/09/06" && date <= "2014/09/06") {
            ++tot;
            if (first || date < mn) {
                mn = date; mnname = name;
            }
            if (first || date > mx) {
                mx = date; mxname = name;
            }
            first = false;
        }
    }
    if (tot)
        cout << tot << ' ' << mnname << ' ' << mxname << endl;
    else
        cout << tot << endl;
    return 0;
}
