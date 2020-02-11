function [ sum,csum ] = testseries( r,low,high )
%three argument inputs and two outputs
% r argument takes a desired value and low and high takes the values of
% lower and upper range of the values.
n = low:1:high;
x = low:high;
sum = 0;
fprintf('the array is \n');
disp(n);
j = 1;
for k = 1:length(n)
    x(j) = r^(n(k));
    sum = sum + x(j);
    j = j+1;
end
fprintf('the power vector is \n');
disp(x);
csum = 1/(1-r);
fprintf('the sum and the sum using formula is %f & %f \n',sum,csum);
end

