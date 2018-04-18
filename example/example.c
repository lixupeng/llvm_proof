int test(int n)
{
    int a[n];
    int b[n + 2];
    int sum = 0;

    sum += a[0];  // not overflow
    sum += a[n - 1];  // not overflow
    sum += a[n]; // overflow
    sum += b[n];  // not overflow

    int t = 0;
    for (int i = 0; i <= n; ++i)
    {
	sum += a[i];  // overflow
	sum += b[i];  // not overflow
	t++;
    }
    sum += b[t];  // not overflow
    sum += b[t + 1];  // overflow

    for (int i = n; i >= 0; --i)
    {
	sum += a[i];  // overflow
	sum += b[i];  // not overflow
    }

    for (int i = 0; i <= n; ++i)
	for (int j = 0; i + j <= n; ++j)
	{
	    sum += a[i + j];   // overflow 
	    sum += b[i + j];   // not overflow
	}


    return sum;
}
