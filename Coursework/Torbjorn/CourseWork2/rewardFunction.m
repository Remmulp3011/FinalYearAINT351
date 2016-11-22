function rewardFunction(state, action)
%REWARDFUNCTION Summary of this function goes here
%   Detailed explanation goes here

global reward;

if(state == 5)
    if(action == 3)
        reward = 10;
    else
        reward = 0;
    end
end

end

