%Number of datapoints
samples = 10000;

%Create a Matrix of 1 X samples (1xn)
dataUniform = randn(1,samples);

%Specify the number of bins
nbins = 400;

%Print the matrix size
message = sprintf('dataUniform Matrix size %d x %d', size(dataUniform,1), size(dataUniform,2));
disp(message);

%Plot data on figure with fitted line
figure
hold on
i = histfit(dataUniform,nbins);
title('Fit Histogram');
ylabel('Data point occurance');
xlabel('Data point value');