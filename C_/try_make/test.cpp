#include <stdio.h>
#include <limits.h>
#include <float.h>
 
int main()
{
	int typeofint;
	typeofint = sizeof(int);
	printf("int size :%u \n", typeofint );
    /* 我的第一个 C 程序 */
    printf("Hello, World! \n");

    printf("float size max : %lu \n", sizeof(long double) );
    printf("float size min : %E \n", FLT_MIN );
    printf("float size max : %E \n", FLT_MAX );
    printf("float accuracy : %d \n", FLT_DIG);

    // int a,b;
    // scanf("%d %d", &a, &b);
 	// printf("%p %p\n",&a,&b);

 	// extern int d = 3, f = 5;
 	// printf("%d %d \n",d, f );
    return 0;
}

int rand(int i){

}
