function Episode
%EPISODE: Run the number of episode specified by the trial and count and
%store the number of steps taken to reach the goal state from the random
%starting state.
global endTrialState;
global qTable;
global TrialNumber;
global stepNumberStore
global columnNum;

%Run 100 episodes in each trial.
while TrialNumber <= 100
stepNumber = 1;
StartingState();

while endTrialState ~= 2
    state = endTrialState;
    stepNumber = stepNumber + 1;
    eGreedyActionSelection(qTable,state);
end
stepNumberStore(columnNum,TrialNumber) = stepNumber;
TrialNumber = TrialNumber + 1;
end

% figure
% plot(stepNumberStore)
% title('Q-learning performance improvement')
% xlabel('Episode Number')
% ylabel('Number of Steps')
%axis = [xmin,xmax,ymin,ymax,zmin,zmax]

end