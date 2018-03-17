int isPalindrome(char *arr, int size)
{
	for (int i=0; i<(size/2+1); i++)
	{
		if( arr[i]!= arr[size-1-i] )
			return -1;
	}
	return 1;
			
}
