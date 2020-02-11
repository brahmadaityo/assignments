function [ x,y ] = circle(r,theta)
%functions that can take a coloumn vector of angles and radius as input 
% the output is the x = r*cos(theta) && y = r*sin(theta) && it checks the
% value of r and sqrt(x^2+y^2) 
for k = 1:length(theta)

    fprintf('the value of theta is %f \n',theta(k));
    x = r*cos(theta(k));
    fprintf('the value of x is %f \n',x);   
    y = r*sin(theta(k));
    z = sqrt(x^2+y^2);
    fprintf('the value of y is %f \n',y);
    fprintf('the value of sqrt(x^2 + y^2) and r is %f & %f \n',z,r);
end


end

