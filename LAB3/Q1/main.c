#include <stdio.h>
#include "myMath.h"
void evaluate(int result)
{
	if ( result == 1 )
		printf("Equal\n");
	else
		printf("Not Equal\n");

}
int main()
{

	int v1 = 5;
	int v2 = 4;
	int v3 = 4;
	int result=0;
	printf("Comparing 4 & 5\t");
	evaluate(isEqual(v2,v1));
	printf("Comparing 4 & 4\t");
	evaluate(isEqual(v2,v3));
	
	printf("Before swap:\nv1: %d \nv2: %d\n",v1,v2);
	swap(&v1,&v2);
	printf("After swap:\nv1: %d \nv2: %d\n",v1,v2);
	return 0;
}
