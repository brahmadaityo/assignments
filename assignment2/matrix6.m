function [ ] = matrix6( )
% this function takes no parameters,ques description below
% Author -->> Siddhartha Ghosal 
%Generate an M×N random matrix A with values between 0 to 100.
%a) Calculate the row-wise summation, average, minimum and maximum
%b) Calculate the column-wise summation, average, minimum and maximum
%c) Now compute the summation, average, minimum and maximum of all elements of A
%d) Generate a binary matrix from A by replacing its elements by ‘0’ and ‘1’ if the element
%is <= matrix average, and the element is > matrix average, respectively.
prompt = 'enter the value the number of rows' ;
M = input(prompt);
prompt = 'enter the value of the number of cols' ;
N = input(prompt);
A = randi(100,M,N);
fprintf("the random matrix is \n");
disp(A);
% the neccesery declaration for all the max,min,avg,arrays
rmax = -1 .*ones(M,1);
rmin = 9999.*ones(M,1);
rmean = zeros(M,1);
cmax = -1 .*ones(N,1);
cmin = 9999.*ones(N,1);
cmean = zeros(N,1);
amax = -1;
amin = 9999;
amean = 0;
%min,max and mean of total matrix
for i = 1:M 
    for j = 1:N
        amean = amean + (A(i,j));
        amax = max(amax,A(i,j));
        amin = min(amin,A(i,j));
    end
end
disp(amean);
amean = amean/(M*N);
disp(amean);
fprintf("the values of the min,max and mean of whole Matrix is %f %f %f \n ",amin,amax,amean);
for i = 1:M
    for j = 1:N
        rmax(i) = max(rmax(i),A(i,j));
        rmin(i) = min(rmin(i),A(i,j));
        rmean(i) = (rmean(i)+A(i,j));
    end
end
fprintf("the values of the max,min and mean of rows is \n ");
rmean = rmean ./ N;
disp(rmax);
disp(rmin);
disp(rmean);
for j = 1:N
    for i = 1:M
        cmax(j) = max(cmax(i),A(i,j));
        cmin(j) = min(cmin(j),A(i,j));
        cmean(j) = (cmean(j)+A(i,j));
    end
end
fprintf("the values of the max,min and mean of the coloumns are \n");
cmean = cmean ./ M;
disp(cmax);
disp(cmin);
disp(cmean);
binary(A,amean);

function [y] = max(a,b)
%max function
if a>b
    y = a;
else
    y = b;
end
end
function [y] = min(a,b)
%min function
if a<b
    y = a;
else
    y = b;    
end
end
function [] = binary(A,avg)
  for ib = 1:M
      for jb = 1:N
          if A(ib,jb) <= avg 
              mat(ib,jb) = 0;
          else
             mat(ib,jb)= 1;
          end
              
      end
  end
  fprintf("the generated binary matrix is \n");
  disp(mat);
end
end
