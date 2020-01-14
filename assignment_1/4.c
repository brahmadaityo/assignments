//generating a m*n matrix with values ranges from 0-2^n where n is an user input
#include<stdio.h>
#include<time.h>
#include<math.h>
#include<stdlib.h>
int main()
{
srand(time(0));
int i,j,m,N,total,mean,n,mat[100][100];
printf("enter the size of the matrix M*n and the value of the n\n");
scanf("%d %d %d",&m,&n,&N);
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	mat[i][j] = rand()%((int)pow(2,N));
	total += mat[i][j];
	}
}
printf("the genreated matrix is \n");
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	printf("%d ",mat[i][j]);
	}
	printf("\n");
}
mean = floor(total/(m*n));
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	if(mat[i][j] >= mean)
		mat[i][j] = 1;
	else mat[i][j] = 0;
	}
}
printf("the newly genreated matrix is \n");
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	printf("%d ",mat[i][j]);
	}
	printf("\n");
}
return 0;
}

