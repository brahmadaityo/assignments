/*calculate row wise mean,max,min
calculate coloumn wise mean max min
of a random matrix with values 0-100
author-Siddhartha Ghosal
enrollment no. - 510818006
created - 7/01/2020
input - size of the matrix m,n
output- the mean,max,min row-wise and coloumn wise*/
#include<stdio.h>
#include<time.h>
#include<stdlib.h>
#include<string.h>
int MAX(int a,int b)
{
if(a>b)
	return a;
else return b;
}
int MIN(int a,int b)
{
if(a<b)
	return a;
else return b;
}
int main()
{
	int i,j,max,min,amin=9999,total,atotal,amax=-1,m,n,mat[100][100],rmax[100],rmin[100],cmax[100],cmin[100]; 
	float rmean[100],cmean[100],amean;
	memset(rmax,-1,sizeof(rmax));
	memset(rmean,0,sizeof(rmean));
	memset(cmean,0,sizeof(cmean));
	memset(cmax,-1,sizeof(cmax));
	
	printf("enter the values of the M and N\n");
	scanf("%d %d",&m,&n);
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			mat[i][j] = (rand()%101) ; /*/filling up the random matrix*/
		}
	}
	printf("the matrix is \n");
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			printf("%d ",mat[i][j]);
			
		}
		printf("\n");
	}
	/*int amax = -1;
	int amin = 999999;*/
	/*/////////total calculations/////////*/
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
		amean += ((float)mat[i][j]/(float)(m*n));
		amax = MAX(amax,mat[i][j]);
		amin = MIN(amin,mat[i][j]);
		}
	}
	////setting up mins//////////////////
	for(i=0,j=0;i<m,i<n;i++,j++)
	{
		cmin[j] = 99999;
		rmin[i] = 99999;
	}
	/////row wise calculations///////
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			rmax[i] = MAX(rmax[i],mat[i][j]);
			rmin[i] = MIN(rmin[i],mat[i][j]);
			rmean[i] +=((float)mat[i][j]/(float)(m));
		}
	}
	for(j=0;j<n;j++)
	{
		for(i=0;i<m;i++)
		{
			cmin[j] = MIN(cmin[j],mat[i][j]);
			cmax[j] = MAX(cmax[j],mat[i][j]);
			cmean[j] += ((float)mat[i][j]/(float)(n)); 
		}
	}
printf("the value of the mean & max & min of the whole matrix is %f %d %d\n",amean,amax,amin);
for(i=0;i<m;i++)
{
printf("the %dth row mean,max,min is %f %d %d \n",i,rmean[i],rmax[i],rmin[i]);
}
for(j=0;j<n;j++)
{
	printf("the %d th coloumn min max and mean is %f %d %d\n ",j,cmean[j],cmax[j],cmin[j]);
}
}
