function Experiment

global ExperimentNumber
ExperimentNumber = 1;
global stepNumberStore
stepNumberStore = [];
global columnNum
columnNum = 1;
meanStore = [];
stdStore = [];

while ExperimentNumber <= 500
    Trial();
    stdStore = std(stepNumberStore);
    meanStore = mean(stepNumberStore);
    ExperimentNumber = ExperimentNumber + 1;
end

%disp(meanStepNumberStore);
%disp(stdStepNumberStore);
disp('meanStore is:')
disp(meanStore);
disp('stdStore is:')
disp(stdStore);

% figure
shadedErrorBar([1:100],meanStore,stdStore);
title('Mean and standard deviation of Q-learning performance over 500 trials')
xlabel('Episode Number')
ylabel('Number of Steps')

end

