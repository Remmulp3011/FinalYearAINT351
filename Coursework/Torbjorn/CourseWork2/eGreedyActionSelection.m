function eGreedyActionSelection(qTable,state)
%EGREEDYACTIONSELECTION Summary of this function goes here
%   Detailed explanation goes here
action = 1;
maxActionValue = 0;
maxAction = zeros(1,1);
randomNum = rand(1,1);

for n=1:size(qTable,2)
    value = qTable(state,action);
        if(value>maxActionValue)
            maxActionValue = value;
            maxAction(1,1) = action;
        end
    action = action+1;
end

if(randomNum <= 0.9)
    disp('max action is:');
    disp(maxAction);
else
    disp('Random action is:')
    randomAction = randi(length(qTable(2)));
    disp(randomAction);
end

end

