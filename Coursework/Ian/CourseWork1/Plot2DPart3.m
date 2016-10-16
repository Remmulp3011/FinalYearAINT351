 %Number of datapoints
samples = 10000;

%Create a Matrix of 1 X samples (1xn) from a normal distributon
data = randn(1,samples);

%Specify the number of bins
nbins = 400;

%Print the matrix size
message = sprintf('data Matrix size %d x %d', size(data,1), size(data,2));
fprintf(message);

%Plot data on figure position 1
figure
subplot(1,2,1);
hold on
h = plot(data,'b.');
set(h,'linewidth',3);
title('Normal data plot');
xlabel('Data point value');
ylabel('Data point number');

%Plot data on figure position 2
subplot(1,2,2);
hold on
i = histogram(data,nbins);
title('Normal data histogram plot');
xlabel('Data point value');
ylabel('Data point occurance');


