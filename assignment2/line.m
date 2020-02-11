function [y ] = line( m,c )
%takes two parameter m &c 
%author -->> Siddhartha Ghsoal
%Compute the y-coordinates of a straight line with slope m = 0.5 and
 %intercept c = -2, at the following x-coordinates: x = 0, 0.5, 1, 1.5, … 10.

 %Now write a separate MATLAB function to take x as the input parameter,
 %and return the value of computed y. 
%  
x = 0:0.5:10;
y = (m*x)+c;

end

