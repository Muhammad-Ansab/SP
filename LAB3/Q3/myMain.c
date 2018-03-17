#include <stdio.h>
#include "myStrFunc.h"
#include "myMath.h"

void eval (int result)
{
	if ( result == 1 )
		printf("Palindrome\n");
	else
		printf("Not Palindrome\n");
}
void evaluate(int result)
{
	if ( result == 1 )
		printf("Equal\n");
	else
		printf("Not Equal\n");

}
int main()
{
	char arr1[5] = "ANSAB";
	char arr2[5] = "ANSNA";
	int result;
	eval(isPalindrome(arr1,5));
	eval(isPalindrome(arr2,5));
	
	int v1 = 5;
	int v2 = 4;
	int v3 = 4;
	printf("Comparing 4 & 5\t");
	evaluate(isEqual(v2,v1));
	printf("Comparing 4 & 4\t");
	evaluate(isEqual(v2,v3));
	
	printf("Before swap:\nv1: %d \nv2: %d\n",v1,v2);
	swap(&v1,&v2);
	printf("After swap:\nv1: %d \nv2: %d\n",v1,v2);
	return 0;
}

