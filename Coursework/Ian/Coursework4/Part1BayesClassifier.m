function Part1BayesClassifier
%PART1BAYESCLASSIFIER Summary of this function goes here
%   Detailed explanation goes here

trainingSamples = 1000;
testingSamples = 100000;

[trainingData, trainingTarget] = GenerateGaussianData(trainingSamples);
[testingData, testingTarget] = GenerateGaussianData(testingSamples);

%disp([trainingData, trainingTarget]);
 figure
 hold on
 plot(trainingTarget,trainingData, 'b.');

end

