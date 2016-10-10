%Number of datapoints
samples = 10000;
dimension = 10000;

%Create a Matrix of samples x dimension (nxn)
dataUniform = rand(samples,dimension);

%Specify the number of bins
nbins = 400;

%Print the matrix size
message = sprintf('dataUniform Matrix size %d x %d', size(dataUniform,1), size(dataUniform,2));
disp(message);

%Plot data on figure position 1
figure
subplot(1,2,1);
hold on
h = plot(mean(dataUniform),'b.');
set(h,'linewidth',3);
title('dataUniform raw data plot');
xlabel('Data point number');
ylabel('Data point value');

%Plot data on figure position 2
subplot(1,2,2);
hold on
i = histogram(mean(dataUniform),nbins);
title('dataUniform histogram');
xlabel('Data point number');
ylabel('Data point value');


