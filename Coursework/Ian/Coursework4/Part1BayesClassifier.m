function Part1BayesClassifier
%PART1BAYESCLASSIFIER Summary of this function goes here
%   Detailed explanation goes here

trainingSamples = 1000;
testingSamples = 100000;

[trainingData, trainingTarget] = GenerateGaussianData(trainingSamples);
[testingData, testingTarget] = GenerateGaussianData(testingSamples);

label1 = repmat([1; 0;] , 1, trainingSamples);
label2 = repmat([0; 1;] , 1, trainingSamples);

targetVec = [label1 label2];

fidx = find(targetVec(1,:) == 1);
c1data = trainingData(:,fidx);
fidx = find(targetVec(1,:) == 0);
c2data = trainingData(:,fidx);

    figure
    hold on
    plot(c1data(1,:), c1data(2,:), 'b.','markersize', 10);
    plot(c2data(1,:), c2data(2,:), 'r.','markersize', 10);
    xlabel('x-value');
    ylabel('y-value');
    title('Input training data');
    legend('Class 1','Class 2');

end

