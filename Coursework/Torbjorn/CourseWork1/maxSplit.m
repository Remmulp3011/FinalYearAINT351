function maxSplit(improvementValue)
%MAXSPLIT Summary of this function goes here
%   Detailed explanation goes here

%Must loop through each variable and each value of each veriable and split
%on this and calculate the improvement (see improvement function).
%Subsitute out the thresehold value in the learnDecisionTree function for
%the value in that varibale list, this is what will be split on. Do this
%for each value and keep record of only the max improvement value, others
%can be deleted. Use the unique function and sub out values to loop through
%in a for statement and then pass to improvement function to calcualte the
%improvement inorder to get the max improvement.
global variableNum;
global thresholdValue;
global variableSet;
global rowNumber;

persistent improvementStorage
if(isempty(improvementStorage))
  disp('Improvement storage is not initialized');
  improvementStorage = zeros(1);
end

if(improvementValue > improvementStorage(1,1))
    improvementStorage(1,1)= improvementValue;
    disp('Improvement is better. New improvement is:')
    disp(improvementStorage(1,1));
else
    disp('Improvement is not better. The improvement is still:')
    disp(improvementStorage(1,1));
end

%Loop through all values in each varibale of the dataSet
if (variableNum <= 4 && rowNumber <= size(variableSet,1))
    for n=1:size(variableSet,1)
        value = variableSet(rowNumber,variableNum);
        rowNumber = rowNumber+1;
        thresholdValue = value;
        split(variableNum, variableSet, thresholdValue);
    end
else
    if(variableNum <= 4 && rowNumber > size(variableSet,1))
        variableNum = variableNum+1;
        rowNumber = 1;
        maxSplit(improvementValue);
else
        disp('Program finished max improvment is:');
        disp(improvementStorage(1,1));
    end
end
    
disp(improvementStorage);
disp(size(improvementStorage));
disp(improvementValue);
disp(variableNum);
disp(thresholdValue);
%disp(variableSet);
end

