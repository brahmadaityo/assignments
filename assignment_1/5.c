/*
 * dividing a mxn martix into 3x3 non overlapping blocks and generating binary matrices of 3x3
 author- siddhartha ghosal
 enrollment no- 510818006
 dated 22/01/20
 * */
#include<stdio.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<string.h>
int main()
{
	srand(time(0));
	int mat[200][200],n,m,i,j,a,b,k,l,counti=0,countj=0;
	memset(mat,0,sizeof(mat));
	int rows_reqd,cols_reqd,rows,cols;
	printf("please enter the row and the coloumn size\n");
	scanf("%d %d",&m,&n);
	printf("the matrix is \n");
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			mat[i][j] = rand()%100;
		}
		
	}
	while(!(m%3 == 0))
	{
		m++;
	}
	while(!(n%3 == 0))
	{
		n++;
	}
	printf("the padded matrix is\n");
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			printf("%d ",mat[i][j]);
		}
		printf("\n");
		
	}
	printf("\n");
	printf("the matrix generated are\n");
	for(i=0;i<m;i+=3)
	{
		for(j=0;j<n;j+= 3)
		{
			for (k=i;k<3+i;k++)
			{
				for(l=j;l<3+j;l++)
				{
					/*if(mat[k][l] >= mat[i+1][k+1])
					{
						mat[k][l] = 1;
					}
					else mat[k][l] = 0;*/
					printf("%d ",mat[k][l]);
				}
				printf("\n");
			}
			printf("\n");
		}
		printf("\n");
		
	}
	for(i=0;i<m;i+=3)
	{
		for(j=0;j<n;j+= 3)
		{ 
			a = mat[i+1][j+1];
			for (k=i;k<3+i;k++)
			{
				for(l=j;l<3+j;l++)
				{

					if(mat[k][l] > a)
						mat[k][l] = 1;
					else mat[k][l]=0;
					printf("%d ",mat[k][l]);
				}
				printf("\n");
			}
			printf("\n");
		}
		printf("\n");
		
	}
	
	
	
}

