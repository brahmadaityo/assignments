#include<stdio.h>
////////maxtrix multiplication programme//////////////
void multiply(int m1[100][100],int r1,int c1,int m2[100][100],int c2)
{
int i,j,k;
int r[r1][c2];
for(i=0;i<r1;i++)
{
	for(j=0;j<c2;j++)
	{
	r[i][j] = 0;
	}
}
for(i=0;i<r1;i++)
{
	for(j=0;j<c2;j++)
	{
		for(k=0;k<c1;k++)
		{
			r[i][j] += m1[i][k]*m2[k][j]; /////multiplication 
		}
	}
}

for(i=0;i<r1;i++)
{
	for(j=0;j<c2;j++)
	{
	printf(" %d ",r[i][j]); ///printting the output matrix
	}
	printf("\n");
}
printf("\n");
}
//////////////////////main function//////////////////////////
int main()
{
int i,j,m,n,p;
int matrix_1[100][100],matrix_2[100][100];
printf("if the dim of matrix 1 is mxn the other one will be nxp\n");
printf("enter the values m,n,p\n");
scanf("%d %d %d",&m,&n,&p);

printf("enter the values of the first matrix\n");
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	scanf("%d",&matrix_1[i][j]); ////input of the first matrix
	}
}
printf("the first matrix is \n");
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
	printf(" %d ",matrix_1[i][j]); ///printing the first matrix
	}
	printf("\n");
}
printf("\nenter the second matrix\n");
for(i=0;i<n;i++)
{
	for(j=0;j<p;j++)
	{
	scanf("%d",&matrix_2[i][j]);////input of the second matrix
	}
}
printf("the second matrix is \n");
for(i=0;i<n;i++)
{
	for(j=0;j<p;j++)
	{
	printf(" %d ",matrix_2[i][j]); ///printing the second matrix
	}
	printf("\n");
}
printf("the multiplied result is \n");
multiply(matrix_1,m,n,matrix_2,p); /////calling the multiply function
return 0;


}
