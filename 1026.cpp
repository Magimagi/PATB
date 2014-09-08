/*
 * File: 1026.cpp
 * Author: Magica
 * Date: 2014.09.08
 ****************************************/
#include <bits/stdc++.h>
using namespace std;
int main()
{
    int a, b, h, m;
    cin >> a >> b;
    b -= a;
    if (b >= 100 * 60 * 60) {
        h = b / (100 * 60 * 60);
        b %= 100 * 60 * 60;
    }
    if (b >= 100 * 60) {
        m = b / (100 * 60);
        b %= 100 * 60;
    }
    printf("%02d:%02d:%02d\n", h, m, (int)((double)b / 100 + 0.5));
    return 0;
}
