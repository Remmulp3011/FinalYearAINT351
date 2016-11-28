function [nextAction] = eGreedyActionSelection(qTable,state)
%EGREEDYACTIONSELECTION Summary of this function goes here
%   Detailed explanation goes here

action = 1;
maxActionValue = 0;
maxAction = zeros(1,1);
randomNum = rand(1,1);

%Loop through all actions for the state provided finding the max value
%action and storing this in an array.
for n=1:size(qTable,2)
    value = qTable(state,action);
        if(value>maxActionValue)
            maxActionValue = value;
            maxAction(1,1) = action;
        end
    action = action+1;
end

%Used for percentage of the time.
if(randomNum <= 0.9)
    disp('max action is:');
    disp(maxAction);
    nextAction = maxAction(1,1);
    rewardFunction(state,maxAction(1,1));
else
    disp('Random action is:')
    randomAction = randi(length(qTable(2)));
    disp(randomAction);
    nextAction = randomAction;
    rewardFunction(state,randomAction);
end

%Pass qtable to qlearning

end

