function [] = singular3(A)
%enter the matrix
%this function will do the singular value decomposition of a given matrix
%and verify its properties
[u,d,v] = svd(A);
fprintf('the singular values are \n');
disp(d);
fprintf('the values of U & V are\n');
disp(u);
disp(v);
fprintf('the value of U*D*V and A are \n')
z = u*d*v;
disp(z);
disp(A)
%fprintf('both matrices are same A = U*D*V \n');
end