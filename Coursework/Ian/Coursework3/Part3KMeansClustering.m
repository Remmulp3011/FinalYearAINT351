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



%Concatenate the two sets into a single dataset
TrainData = [uncorrelatedData1; uncorrelatedData2];

%Define the x and y values for the 4 dimensions
x1 = TrainData(1,:);
y1 = TrainData(2,:);

x2 = TrainData(3,:);
y2 = TrainData(4,:);

%calculate covariance matrix
%cm = cov(TrainData);

%[V,D] = eig(A) returns diagonal matrix D of eingenvalues
%[V,D] = eig(cm);

[coeff, score, latent, tsquared, explained] = pca(TrainData);

figure
hold on
plot(x1,y1,'b.');
plot(x2,y2,'b.');
%h = plot(TrainData(:,1), TrainData(:,2),'b.');
%set(h,'linewidth',3);
title('2D TrainData dataset');
xlabel('x-value');
ylabel('y-value');
legend('TrainData'); 