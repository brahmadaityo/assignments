function [] = plot4(x,y);
    cftool('4.sfit');
    fprintf('the best approximation to this curve\n');
    fprintf('Smoothing spline: \n f(x) = piecewise polynomial computed from p \n Smoothing parameter: \n p = 0.0038351118\n');
    fprintf('Goodness of fit: \n SSE: 16.26 \n R-square: 0.9997 \n Adjusted R-square: 0.999 \n RMSE: 3.723\n');
end


