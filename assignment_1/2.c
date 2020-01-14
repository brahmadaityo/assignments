#include<stdio.h>
#include<time.h>
void print(int matrix[10][10][10],int m,int n,int p)
{
int i,j,k;
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
		
		for(k=0;k<p;k++)
		{
		printf("%d ",matrix[i][j][k]);
		}
		printf("\n");
	}
	printf("\n");
}
}
////////////add function/////////////
void add(int matrix1[10][10][10],int matrix2[10][10][10],int matrix3[10][10][10],int m,int n,int p)
{

int i,j,k;
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
		for(k=0;k<p;k++)
		{
		matrix3[i][j][k] = matrix1[i][j][k]+matrix2[i][j][k];
		}
	}
}
printf("the result is \n");
print(matrix3,m,n,p);
}
int main()
{
int i,j,k,m,n,p;
int mat1[10][10][10],mat2[10][10][10],mat3[10][10][10];
srand(time(0));
printf("enter the values of m,n,p\n");
scanf("%d %d %d",&m,&n,&p);
for(i=0;i<m;i++)
{
	for(j=0;j<n;j++)
	{
		for(k=0;k<p;k++)
		{
		mat1[i][j][k]= (rand())%256; ///filling up the matrices
		mat2[i][j][k]= (rand())%256;
		mat3[i][j][k]= 0;
		}
	}
	
}
printf("the first matrix is \n");
print(mat1,m,n,p);
printf("the second matrix is \n");
print(mat2,m,n,p);
printf("the added matrix is \n");
add(mat1,mat2,mat3,m,n,p);

}












