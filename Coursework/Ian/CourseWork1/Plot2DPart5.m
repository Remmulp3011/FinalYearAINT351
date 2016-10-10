%Number of datapoints
samples = 10000;

%Create a Matrix of 2 X samples (2xn)
dataUniform = randn(2,samples);

%Print the matrix size
message = sprintf('dataUniform Matrix size %d x %d', size(dataUniform,1), size(dataUniform,2));
disp(message);

%Plot data on figure position 1
figure
subplot(1,1,1);
hold on
h = plot(dataUniform,'b.');
set(h,'linewidth',3);
title('dataUniform raw data plot');
xlabel('Data point number');
ylabel('Data point value');