function split(variableNum, variableSet, thresholdValue)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global dataSet;
rowNum = 1;
value = variableSet(rowNum, variableNum);
global irisSet1 
irisSet1 = [];
global irisSet2
irisSet2 = [];

%For loop to loop through the data set intervals of records going from 0
%(value passed from learnDecisisonTree) to the max number. Use this to
%determine the type and populate into the next column.

for n=1:size(dataSet,1)
    if (value < thresholdValue)
        %add to subset 1
        irisSet1 = [irisSet1; dataSet(rowNum,1),dataSet(rowNum,2),dataSet(rowNum,3),dataSet(rowNum,4),dataSet(rowNum,5)]
        value = variableSet(rowNum,variableNum);
        rowNum = rowNum+1;
    else
        %add to subset 2
        irisSet2 = [irisSet2; dataSet(rowNum,1),dataSet(rowNum,2),dataSet(rowNum,3),dataSet(rowNum,4),dataSet(rowNum,5)]
        value = variableSet(rowNum,variableNum);
        rowNum = rowNum+1;
    end
end
disp('Iris Set 1 final:')
disp(size(irisSet1));
disp(irisSet1);
disp('Iris Set 2 final:')
disp(size(irisSet2))
disp(irisSet2);
entropyFunction(irisSet1,irisSet2,dataSet);

% T = empty tree
% repeat
%   split data-set, D, into sub-sets, S0-Sn, using T
%   for each subset, Si
%     for each variables, xj
%       for each values, vk, in Si
% 	  split Si into sub-sets Si1 and Si2: vk>xj and xj>=vk
% 	  find max improvement max(I(Si1, Si2)) for split <Si, xj, vk> 
%   add split <Si, xj, vk> with max(I(Si1, Si2)) to T
% until max(I(Si1, Si2)) <= 0.0 