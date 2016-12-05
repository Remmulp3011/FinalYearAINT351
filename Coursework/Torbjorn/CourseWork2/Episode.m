function Episode
%EPISODE Summary of this function goes here
%   Detailed explanation goes here
global endTrialState;
global qTable;
global TrialNumber;
global stepNumberStore
stepNumberStore=[];

initQ();

while TrialNumber <= 100
stepNumber = 1;
StartingState();

while endTrialState ~= 2
    state = endTrialState;
    stepNumber = stepNumber + 1;
    eGreedyActionSelection(qTable,state);
end
stepNumberStore(1,TrialNumber) = stepNumber;
TrialNumber = TrialNumber + 1;
end
%disp(stepNumberStore);

% figure
% plot(stepNumberStore)
% title('Q-learning performance improvement')
% xlabel('Episode Number')
% ylabel('Number of Steps')
%axis = [xmin,xmax,ymin,ymax,zmin,zmax]

end