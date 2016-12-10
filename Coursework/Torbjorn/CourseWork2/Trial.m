function Trial
%TRIAL: Ensure the Q-table is intialized again for each new Trial and run
%episodes while keeping track of the storage of the results.

global TrialNumber
TrialNumber = 1;

global columnNum;

initQ();

Episode();
columnNum = columnNum + 1;

end

