function rndEpisode(startState)
%RNDEPISODE Summary of this function goes here
%   Detailed explanation goes here

global observation;
global nextState;

episode = [];
state = startState;
rowNum = 1;
stepCount = 0;

while state ~= 2
    %List of possible actions.
    actions = [1,2,3,4];

    %Generate a random position.
    position = randi(length(actions));

    %Use the random position to select a action from the list.
    action = actions(position);

    Observations(state);
    
    Transistion(state,action);
    
    state = nextState;
    
    episode(rowNum,1) = observation;
    episode(rowNum,2) = action;
    episode(rowNum,3) = 1;
    
    rowNum = rowNum + 1;
    stepCount = stepCount + 1;
end

disp('state 2 has been reached!!');
episode(size(episode,1),3) = 10;

%For discount you do last is 10 then one before is 10 * 0.9 and one before
%that is the next one times 0.9. e.g. last = 10 second last = 10 * 0.9 = 9 third last = 9 * 0.9 = 8.1 etc. 
for n= 1:size(episode,1)-1
    episode(size(episode,1)-n,3) = episode(size(episode,1)-(n-1),3) * 0.9;
end

disp('Number of steps taken = ')
disp(stepCount);

%Create a matrix of zeros with size of this being 20 - size of episode e.g.
%episode has 15 rows matrix of zeros will be 20-15=5. Concat this (with zero matrix first)
%to populate the beginning of episode with zeros so its size comes to (20,3)
if size(episode,1)<20
    zeroMatrix = zeros(20-size(episode,1),3);
    disp(zeroMatrix);
    episode = [zeroMatrix;episode];
    last20Steps = episode;
else
    last20Steps = episode(size(episode,1)-20:size(episode,1),:);
end

disp('last 20 steps are:');
disp(last20Steps);

end

