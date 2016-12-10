function eGreedyActionSelection(qTable,state)
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

%Used for percentage of the time. 90% of time return max value and 10% of
%the time return a random value.
if(randomNum <= 0.9)
    rewardFunction(state,maxAction(1,1));
else
    randomAction = randi(length(qTable(2)));
    rewardFunction(state,randomAction);
end

end

