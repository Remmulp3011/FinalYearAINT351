function Episode
%EPISODE Summary of this function goes here
%   Detailed explanation goes here
global endTrialState;
global qTable;

stepNumber = 1;
initQ();
StartingState();

while endTrialState ~= 2
    state = endTrialState;
    stepNumber = stepNumber + 1;
    eGreedyActionSelection(qTable,state);
end

disp('Goal state reached. Number of steps = ');
disp(stepNumber);

end