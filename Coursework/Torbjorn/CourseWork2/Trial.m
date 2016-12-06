function Trial
%TRIAL Summary of this function goes here
%   Detailed explanation goes here
global TrialNumber
TrialNumber = 1;
global columnNum;

initQ();

Episode();
columnNum = columnNum + 1;

end

