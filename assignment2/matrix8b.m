function [] = matrix8b()
%This function takes no parameter,the ques. description can be found below
%Author ; Siddhartha Ghosal Date: 11.02.20
%problem :
%Generate an M×N×P user defined matrix B with values between 0 to 255.
%a) Check how B gets stored in your MATLAB workspace.
%b) Hence, write a function to print the 3-D matrix.
%c) Write a function to add two 3-D matrices.
M = input('enter the value of M :');
N = input('enter the value of N :');
P = input('enter the value of p :');
%B = randi(255,M,N,P);
for i = 1:M
    for j = 1:N
        for k = 1:P
            fprintf("B[%d][%d][%d] will be \n",i,j,k);
            B(i,j,k) = input('enter please :');
        end
    end
end
fprintf("the matrix is displayed in this way\n");
print(B);
fprintf("a test 3d matrix to check the add function is \n");
B2 = randi(255,M,N,P);
print(B2);
fprintf("the result is \n");
c = add(B,B2,M,N,P);
print(c);

%AUXILLARY FUNCTIONS
    function [] = print(matrix)
    %this function print the 3d matrix
    for i = 1:M
        for j = 1:N
            for k = 1:P
                fprintf(" %5.2f ",matrix(i,j,k));
            end
            fprintf("\n");
        end
        fprintf("\n");
    end
end
    function [c] = add(matrix1,matrix2,M,N,P)
        %function to add two 3d matrices
        for i = 1:M
            for j = 1:N
                for k = 1:P
                    c(i,j,k) = matrix1(i,j,k) + matrix2(i,j,k);
                end
            end
        end
    end       
end