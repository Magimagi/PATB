/*
 * File: 1027.cpp
 * Author: Magica
 * Date: 2014.09.08
 ****************************************/
#include <bits/stdc++.h>
using namespace std;
int main()
{
    int i, j, k, n, sp = 0, cs, tot = 0;
    char c;
    scanf("%d %c", &n, &c);
    for (i = 1; (1 + (2 * i - 1)) * i - 1 <= n; ++i); --i;
    cs = 2 * i - 1;
    for (j = 1; j <= i; ++j) {
        for (k = 1; k <= sp; ++k)
            putchar(' ');
        for (k = 1; k <= cs; ++k) {
            putchar(c);
            ++tot;
        }
        printf("\n");
        ++sp;
        cs -= 2;
    }
    --sp;
    cs += 2;
    for (j = 2; j <= i; ++j) {
        --sp;
        cs += 2;
        for (k = 1; k <= sp; ++k)
            putchar(' ');
        for (k = 1; k <= cs; ++k) {
            putchar(c);
            ++tot;
        }
        printf("\n");
    }
    printf("%d\n", n - tot);
    return 0;
}
