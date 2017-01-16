function NSMSelectAction(LTM, STM, observation)

randomNum = rand(1,1);

% 10% of the time get a random aciton.
if(randomNum >= 0.9)
while state ~= 2
    %List of possible actions.
    actions = [1,2,3,4];

    %Generate a random position.
    position = randi(length(actions));

    %Use the random position to select a action from the list.
    action = actions(position);

    %Get observations and the next state
    Observations(state);
    Transistion(state,action);
    state = nextState;
    
    %Write results to episode matrix
    episode(rowNum,1) = observation;
    episode(rowNum,2) = action;
    episode(rowNum,3) = 1;
    
    rowNum = rowNum + 1;
    stepCount = stepCount + 1;
end
    rewardFunction(state,maxAction(1,1));
end


end

