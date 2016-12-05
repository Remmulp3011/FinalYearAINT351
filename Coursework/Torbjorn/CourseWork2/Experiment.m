function Experiment

global ExperimentNumber
ExperimentNumber = 1;
global stepNumberStore
stdAndMeanStore = [];

while ExperimentNumber <= 500
Trial();
stdStepNumberStore = std(stepNumberStore);
meanStepNumberStore = mean(stepNumberStore);
stdAndMeanStore(1,ExperimentNumber) = stdStepNumberStore;
stdAndMeanStore(2,ExperimentNumber) = meanStepNumberStore;
ExperimentNumber = ExperimentNumber + 1;
end

shadedErrorBar([],stdAndMeanStore,[2,length(stdAndMeanStore(2,:))],[],[]);

end

