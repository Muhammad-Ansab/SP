int isEqual(int a, int b)
{
	if( a==b )
		return 1;
	return -1;
}
void swap (int *a, int *b )
{
	*b = *b + *a;
	*a = *b - *a;
	*b = *b - *a;
}
