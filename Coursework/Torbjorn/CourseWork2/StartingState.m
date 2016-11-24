function StartingState( input_args )
%STARTINGSTATE Summary of this function goes here
%   Detailed explanation goes here

startingStates = [1,3,4,5,6,7,8,9,10];

position = randi(length(startingStates));

state = startingStates(position);

%Pass to qlearning
end

