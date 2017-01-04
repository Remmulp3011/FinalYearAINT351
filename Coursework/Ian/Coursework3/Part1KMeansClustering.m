%select number of samples for each set
samples1 = 10000;
samples2 = 10000;

%define the mean for each set
meanSet1 = [-4 -1]';
meanSet2 = [3 4]';

%define the standard deviation for each set 
stanDevSet1 = 0.75;
stanDevSet2 = 2;

%Create a Matrix of 2 X samples (2xn) with the specified mean and standard 
%deviation using 'standardDeviation * randn(2,n) + mean;' for each data set
uncorrelatedData1 = stanDevSet1 * randn(2,samples1) + meanSet1;

uncorrelatedData2 = stanDevSet2 * randn(2,samples2) + meanSet2;

%Define the x and y values for set 1 and 2 respectively
x1 = uncorrelatedData1(1,:);
y1 = uncorrelatedData1(2,:);

x2 = uncorrelatedData2(1,:);
y2 = uncorrelatedData2(2,:);

figure
hold on
plot(x1,y1,'b.');
plot(x2,y2,'r.');
title('2D raw datasets');
xlabel('x-value');
ylabel('y-value');
legend('dataSet1','dataSet2');



