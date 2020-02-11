function [ y ] = second( t,select )
%UNTITLED3 Summary of this function goes here
%   the second argument selects the function that will be used 1 for tsint
%   2 for t+1/t-1 and 3 for sin(t^2)/t^2
if (select == 1)
    fprintf('the result of t*sint is\n');
    y = t.*sin(t);
elseif (select == 2)
        fprintf('the result of (t+1/t-1)is\n ');
        y = (t+1)./(t-1);
elseif (select == 3)
    fprintf('the result of sin(t^2)/t^2 is\n');
    y = (sin(t^2))./(t^2);
end
    

end
