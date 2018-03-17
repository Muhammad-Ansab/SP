#include <stdio.h>
#include "myStrFunc.h"
void eval (int result)
{
	if ( result == 1 )
		printf("Palindrome\n");
	else
		printf("Not Palindrome\n");
}
int main()
{
	char arr1[5] = "ANSAB";
	char arr2[5] = "ANSNA";
	int result;
	eval(isPalindrome(arr1,5));
	eval(isPalindrome(arr2,5));
	return 0;
}
