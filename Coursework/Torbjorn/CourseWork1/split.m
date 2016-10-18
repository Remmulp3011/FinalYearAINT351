function [classification] = split(variableNum, rowNum, thresholdValue)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global variableSet;
global dataSet;
value = variableSet(variableNum, rowNum);
irisSet1 = [];
irisSet2 = [];

%For loop to loop through the data set intervals of records going from 0
%(value passed from learnDecisisonTree) to the max number. Use this to
%determine the type and populate into the next column.

for n=rowNum:size(dataSet,2)
if (value <= thresholdValue)
    %add to subset 1
        classification = 'iris1';
        irisSet1 = [irisSet1; dataSet(1,rowNum),dataSet(2,rowNum),dataSet(2,rowNum),dataSet(4,rowNum),dataSet(5,rowNum)]
        value = variableSet(variableNum, rowNum+1);
else
    %add to subset 2
        classification = 'iris2';
        irisSet2 = [irisSet2; dataSet(1,rowNum),dataSet(2,rowNum),dataSet(2,rowNum),dataSet(4,rowNum),dataSet(5,rowNum)]
        value = variableSet(variableNum, rowNum+1);
end
end
disp(irisSet1);
disp(irisSet2);

