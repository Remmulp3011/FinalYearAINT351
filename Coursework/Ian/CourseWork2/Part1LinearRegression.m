%Generate 100 sample points using the equation for a 1D line: y = mx + C
% Use the following parameters: x-axis starting point = -4; x-axis ending point = 6;
% m = 1.6;
% C = 6;
    b0 = 3;
    b1 = 4;
    f = @(x) b0-b1*x;
    ezplot(f,0,5)