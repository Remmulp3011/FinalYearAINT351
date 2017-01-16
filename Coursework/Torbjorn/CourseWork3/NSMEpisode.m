function NSMEpisode(LTM)

global observation;
global stepStore;

episode = [];
stepCount = 0;
global iterationNumber;

NSMSelectAction(LTM,STM,observation);

disp('state 2 has been reached!!');
episode(size(episode,1),3) = 10;

%For discount you do last is 10 then one before is 10 * 0.9 and one before
%that is the next one times 0.9. e.g. last = 10 second last = 10 * 0.9 = 9 third last = 9 * 0.9 = 8.1 etc. 
for n= 1:size(episode,1)-1
    episode(size(episode,1)-n,3) = episode(size(episode,1)-(n-1),3) * 0.9;
end

disp('Number of steps taken = ')
disp(stepCount);
stepStore(1,iterationNumber) = stepCount;

%Create a matrix of zeros with size of this being 20 - size of episode e.g.
%episode has 15 rows matrix of zeros will be 20-15=5. Concat this (with zero matrix first)
%to populate the beginning of episode with zeros so its size comes to (20,3)
if size(episode,1)<20
    zeroMatrix = zeros(20-size(episode,1),3);
    disp(zeroMatrix);
    episode = [zeroMatrix;episode];
    last20Steps = episode;
else
    last20Steps = episode(size(episode,1)-19:size(episode,1),:);
end
%disp('size is')
%disp(size(last20Steps));
%disp('last 20 steps are:');
%disp(last20Steps);
LTM(:,:,iterationNumber) = last20Steps;

end

