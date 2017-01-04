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

%Combine variables to calculate y in a quadratic equation
y = A*x.^2+B*x+c;

%Create noise for data in a Gaussian format (default std = 5 mean = 0)
noise = stanDev.*randn(1,samples)+mean;

%Linear basis for function
xLin = [x; ones(1,samples);];

%Fit test data with linear line
linFit = regress(y,xLin);

%Quadratic basis for function
Quad = [x.*x;x;ones(1,samples);];

%Fit test data with quadratic line
quadFit = regress(y,Quad);

%Plot x against y adding on the Gaussian noise 
figure
hold on
plot(x,y+noise,'-o','linewidth',2);
plot(x,y+linFit,'-','linewidth',2);
plot(x,y+Quad,'-','linewidth',2);
legend('rawData','fitted lin data','fitted quad data');
ylabel('Data Point Value');
xlabel('Data Point Number');
title('dataNormal raw data plot');