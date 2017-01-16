function [output] = rndTrial(numberOfEpisodesAdded)

%This should take the number of episodes to run and therefore the number of
%results sets of 20x3 to add to the 3D matrix.
global LTM
LTM = zeros(20,3,numberOfEpisodesAdded);

global iterationNumber 
iterationNumber = 1;

global stepStore 
stepStore = zeros(1,numberOfEpisodesAdded);


%Store results of the 20x3 matrix in the LTM for each iteration. Each
%episode will generate a new 20X3 matrix which should be added to LTM. When
%the LTM is called with (:,:,3) it should return the 3rd episodes results
%matrix (3rd episodes 20x3 matrix). See diagram in notepad for visual.

while iterationNumber <= numberOfEpisodesAdded
    rndStartState();
    iterationNumber = iterationNumber + 1;
end

output = stepStore;

%Assigned arbituary numbers. Sending the LTM (all 20x3 matrices) the 
% episode from the LTM, a step from that episode STM (the current
%episode 20x3 matrix, which is the last and is to be fixed!) and then the 
%observation value from that step.

%proximity(LTM,3,5,STM,10);
KNearest();
end

