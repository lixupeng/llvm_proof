int f(int n)
{
    int a[n];
    int sum = 0;
    for (int i = 0; i < n; ++i)
	for (int j = 0; i + j <= n; ++j)
	    sum += a[i + j];
    return sum;
}
