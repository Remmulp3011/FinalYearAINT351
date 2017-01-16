function Part1BayesClassifier
% Set the sample numbers for the trainging and testing data
trainingSamples = 1000;
testingSamples = 100000;

%Get the two sets
[trainingData, trainingTarget] = GenerateGaussianData(trainingSamples);
[testingData, testingTarget] = GenerateGaussianData(testingSamples);

%Separate out the classes
label1 = repmat([1; 0;] , 1, trainingSamples);
label2 = repmat([0; 1;] , 1, trainingSamples);
%Concate the two
targetVec = [label1 label2];

%vectorized example to extract all class 1 patterns
% examine first dimension which is 1 for class 1
fidx = find(targetVec(1,:) == 1);
c1data = trainingData(:,fidx);

%vectorized example to extract all class 2 patterns
% examine first dimension which is 0 for class 2
fidx = find(targetVec(1,:) == 0);
c2data = trainingData(:,fidx);

    %Plot the two separated sets on same plot.
    figure
    hold on
    plot(c1data(1,:), c1data(2,:), 'b.','markersize', 10);
    plot(c2data(1,:), c2data(2,:), 'r.','markersize', 10);
    xlabel('x-value');
    ylabel('y-value');
    title('Input training data');
    legend('Class 1','Class 2');
end

