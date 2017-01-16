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
dataSet1 = stanDevSet1 * randn(2,samples1) + meanSet1;
dataSet2 = stanDevSet2 * randn(2,samples2) + meanSet2;

%Concatenate the two sets into a single dataset
TrainData = [dataSet1; dataSet2];

%Define the x and y values for the 4 dimensions
x1 = TrainData(1,:);
y1 = TrainData(2,:);
x2 = TrainData(3,:);
y2 = TrainData(4,:);
%Plot both sets of coordinates 
figure
hold on
plot(x1,y1,'b.');
plot(x2,y2,'b.');
title('2D TrainData dataset');
xlabel('x-value');
ylabel('y-value');
legend('TrainData');  