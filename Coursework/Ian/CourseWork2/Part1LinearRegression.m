%Specify number of samples to take
samples = 100;

%Set limits for x value
minX = -4;
maxX = 6;

%Sample x and specify other variable
x = linspace(-4,6);
c = 6;
m = 1.6;

%Combine variables to calculate y in a linear equation
y = m*x+c;

%Create noise for data in a Gaussian format (default std = 1 mean = 0)
r = randn(1,samples);

%Plot x against y adding on the Gaussian noise 
figure
plot(x,y+r,'-o','linewidth',2) 
ylabel('Data Point Value');
xlabel('Data Point Number');
title('dataNormal raw data plot');
legend('rawData');
%plot(x,r(1,:)+y,'-o','linewidth',2) 

