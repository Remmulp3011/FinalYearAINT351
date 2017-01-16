function rewardFunction(state, action)
%REWARDFUNCTION: Determine the reward given for each state. Only award 10
%if in state 5 and action 3 is taken as this results in the goal state.

global reward;

if(state == 5)
    if(action == 3)
        reward = 10;
    else
        reward = 0;
    end
else
    reward = 0;
end

TransistionFunction(state,action);

end

