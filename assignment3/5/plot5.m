function [] = plot5(x)
%corrupted sine function 
%enter the values of x,y will becomputed automatically
y = sin(x) + rand(size(x))/100;
cftool('5.sfit');
fprintf('the best fit is given by fourth order fourier series fit\n');
fprintf('y = a0 + a1*cos(xw)+b1*sin(xw)+...+a4*sin(4xw)+b4*cos(4xw)\n');
fprintf(' SSE: 1.085e-05 \n R-square: 1 \n Adjusted R-square: 0.9999 \n RMSE: 0.003294 \n');
end
