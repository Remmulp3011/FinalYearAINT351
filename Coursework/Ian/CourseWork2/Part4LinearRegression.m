%Specify number of samples to take
samples = 100;

%Set limits for x value
minX = -4;
maxX = 6;

%Quadratic coefficients
A = 1.6;
B = 2.5;
C = 6;

%Sample x and specify other variable
x = linspace(minX,maxX);
c = 6;
m = 1.6;

%Mean and stanDev
mean = 0;
stanDev = 5;

%Combine variables to calculate y in a linear equation
y = A*x.^2+B*x+c;

%Create noise for data in a Gaussian format (default std = 5 mean = 0)
r = mean*randn(1,samples)+stanDev;

%Plot x against y adding on the Gaussian noise 
figure
plot(x,y+r,'-o','linewidth',2);
%plot(x,r(1,:)+y,'-o','linewidth',2) 
ylabel('Data Point Value');
xlabel('Data Point Number');
title('dataNormal raw data plot');
legend('rawData');


