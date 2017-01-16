%Specify number of samples to take
samples = 100;

%Set limits for x value
minX = -4;
maxX = 6;

%Sample x and specify other variable
x = linspace(minX,maxX);
c = 6;
m = 1.6;

%Combine variables to calculate y in a linear equation
y = m*x+c;

%Create noise for data in a Gaussian format (default std = 1 mean = 0)
noise = randn(1,samples);

%Plot x against y adding on the Gaussian noise 
figure
plot(x,y+noise,'-o','linewidth',2) 
ylabel('Data Point Value');
xlabel('Data Point Number');
title('dataNormal raw data plot');
legend('rawData');

