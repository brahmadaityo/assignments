function [ ] = assignment5( low,increment,high )
%it should be called directly and it takes three parameters lower higher
%and increment value for default it should be set to one.
% Create a vector v and a matrix M with the following MATLAB
 %commands:

 %v = 0 : 0.2 : 12;
 %M = [sin(v); cos(v)];
%a) Check how v and M are stored in your MATLAB workspace.
%b) Find and print the dimensions of v and M.
%c) Extract the first 10 elements of each row of the matrix and display
%them as individual column vectors.
v = low:increment:high;
m = [sin(v);cos(v)];
[z,y] = size(m);
[r,c] = size(v);
fprintf('the size of the matrix v is %d x %d \n',r,c);
fprintf('the size of the matrix M is %d x %d \n',z,y);
j = 1;
for i = 1:10
    x(j,1) = m(1,i);
     y(j,1) = m(2,i);
    j = j+1;
end
disp(x);
fprintf('>>>the second matrix is <<<\n');
disp(y);

end

