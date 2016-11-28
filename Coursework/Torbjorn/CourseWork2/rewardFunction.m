function rewardFunction(state, action)
%REWARDFUNCTION Summary of this function goes here
%   Detailed explanation goes here

global reward;
disp('REWARD FUNCTION ENTERED');
if(state == 5)
    if(action == 3)
        reward = 10;
    else
        reward = 0;
    end
else
    reward = 0;
end
disp('Reward is')
disp(state);
disp(action);
disp(reward);
TransistionFunction(state,action);

end

