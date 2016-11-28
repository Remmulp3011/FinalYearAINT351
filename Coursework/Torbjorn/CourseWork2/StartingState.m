function StartingState
%STARTINGSTATE Summary of this function goes here
%   Detailed explanation goes here

global qTable;

startingStates = [1,3,4,5,6,7,8,9,10];

position = randi(length(startingStates));

state = startingStates(position);

eGreedyActionSelection(qTable,state);


%Pass to qlearning
end

