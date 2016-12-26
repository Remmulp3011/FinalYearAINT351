function rndTrial(numberOfEpisodesAdded)
%RNDTRIAL Summary of this function goes here
%   Detailed explanation goes here

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

%disp('Size of LTM is:');
%disp(size(LTM));
%disp('LTM is:');
%disp(LTM);
%disp('Step Store is:')
%disp(stepStore);
%Maybe should call the intial random start state generater which will in
%turn call the rnd Episode.

end

