function rndStartState
%RNDSTARTSTATE Summary of this function goes here
%   Detailed explanation goes here

%List of possible states.
startingStates = [1,3,4,5,6,7,8,9,10];

%Generate a random position.
position = randi(length(startingStates));

%Use the random position to select a state from the list.
startState = startingStates(position);

rndEpisode(startState);

end

