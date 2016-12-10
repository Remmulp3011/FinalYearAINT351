function Experiment
%Experiment: Run 500 trials and calculate the standard deviation and mean for
%these trials.

global ExperimentNumber
ExperimentNumber = 1;

global stepNumberStore
stepNumberStore = [];

global columnNum
columnNum = 1;

meanStore = [];
stdStore = [];

%Run 500 trials per experiment.
while ExperimentNumber <= 500
    Trial();
    stdStore = std(stepNumberStore);
    meanStore = mean(stepNumberStore);
    ExperimentNumber = ExperimentNumber + 1;
end

%Plot a shaded error bar graph of the results.
shadedErrorBar([1:100],meanStore,stdStore);
title('Mean and standard deviation of Q-learning performance over 500 trials')
xlabel('Episode Number')
ylabel('Number of Steps')

end

