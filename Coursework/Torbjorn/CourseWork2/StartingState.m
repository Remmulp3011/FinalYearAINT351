function StartingState
%STARTINGSTATE: Randomly choose a starting state (not 2) 

global qTable;

%List of possible states.
startingStates = [1,3,4,5,6,7,8,9,10];

%Generate a random position.
position = randi(length(startingStates));

%Use the random position to select a state from the list.
state = startingStates(position);

eGreedyActionSelection(qTable,state);

end

