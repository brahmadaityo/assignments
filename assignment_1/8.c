/*generating a random matrix of size m*n with values ranging from 0-255 and counting their frequencies
name-siddhartha ghosal
enrollment no. 510818006
input - size of matrix m & n
output- the matrix & the frequencies of the numbers */
#include<stdio.h>
#include<time.h>
#include<stdlib.h>
int main()
{
srand(time(0));
int mat[100][100],i,j,k,m,n,count[256];
printf("enter the size please \n");
scanf("%d %d",&m,&n);
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	mat[i][j] = rand()%256; //filling up the matrices
	}
}
printf("the matrix is ");
for(i = 0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
		
		count[mat[i][j]]++;
		printf(" %d ",mat[i][j]);
	}
	printf("\n");
}
printf("the frequencies are\n");
for(i = 0;i<256;i++)
{
printf("\nthe frequency of %d is %d\n",i,count[i]);

}
}

