%Number of datapoints
samples = 10000;

%Create a Matrix of samples (nxn) from a uniform distribution 
data = rand(samples);

%Get the mean of the 2nd dimension of the data set
meanData = mean(data,2);

%Specify the number of bins
nbins = 400;

%Print the matrix size
message = sprintf('data Matrix size %d x %d', size(data,1), size(data,2));
fprintf(message);

%Plot data on figure position 1
figure
subplot(1,2,1);
hold on
h = plot(meanData,'b.');
set(h,'linewidth',3);
title('Data mean plot');
xlabel('Data point number');
ylabel('Data point value');

%Plot histogram data on figure position 2
subplot(1,2,2);
hold on
histogram(meanData,nbins);
title('Data mean plot on histogram');
xlabel('Data point number');
ylabel('Data point occurance');


