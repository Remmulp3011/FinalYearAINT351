function split(variableNum, variableSet, thresholdValue)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global dataSet;
rowNum = 1;
value = variableSet(rowNum, variableNum);
global irisSet1;
irisSet1 = [];
global irisSet2;
irisSet2 = [];

%For loop to loop through the data set intervals of records going from 0
%(value passed from learnDecisisonTree) to the max number. Use this to
%determine the type and populate into the next column.
for n=1:size(dataSet,1)
    if (value < thresholdValue)
        %add to subset 1
        irisSet1 = [irisSet1; dataSet(rowNum,1),dataSet(rowNum,2),dataSet(rowNum,3),dataSet(rowNum,4),dataSet(rowNum,5)];
        value = variableSet(rowNum,variableNum);
        rowNum = rowNum+1;
    else
        %add to subset 2
        irisSet2 = [irisSet2; dataSet(rowNum,1),dataSet(rowNum,2),dataSet(rowNum,3),dataSet(rowNum,4),dataSet(rowNum,5)];
        value = variableSet(rowNum,variableNum);
        rowNum = rowNum+1;
    end
end

entropyFunction(irisSet1,irisSet2,dataSet);

end