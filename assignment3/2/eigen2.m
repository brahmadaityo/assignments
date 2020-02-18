function [] = eigen2()
%this function requires no input
%the matrix in the computation is 
% M = {[5,-3,2];[-3,8 ,4];[4,2,-9};
A = [5,-3,2;-3,8,4;4,2,-9];
[v,d] = eig(A);
fprintf('the eigen values are \n');
disp(d);
fprintf('the eigen vectors are \n');
disp(v);
fprintf('the value of A*V & lambda*v are \n')
s = A*v;
z = d*v;
disp(s);
disp(z);
fprintf('they are same\n');
end