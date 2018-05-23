int test(int n, int x)
{
    int a[n], k = 0;
    if (x >= 0)
    {
        int t = 0;
        if (x >= 2) t = x; else t = 1;
        if (x >= 1) k = t; else k = 0;
        k = a[k - x];
    }
    /*
    for (int i = 0; i < x; ++i) ++k;
    if (n + k > 0) k = a[k - x];
    */
    return k;
}
