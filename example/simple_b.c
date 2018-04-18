int test(int n)
{
    int x[n + 1];
    int sum = 0;
    for (int i = n; i >= 0; --i)
    {
        sum += x[i];
    }
    return sum;
}

/*
for (int i = 0, max_j = n; i < n; ++i, --max_j)
    for (int j = 0, k = i; j < max_j; ++j, ++k):
        sum += x[k]
*/