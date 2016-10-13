function [classification] = split(variable, index, threshold)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global numbers;
global dataSet;
value = numbers(variable, index);
maxNumber = max(numbers);

%For loop to loop through the data set intervals of records going from 0
%(value passed from learnDecisisonTree) to the max number. Use this to
%determine the type and populate into the next column.


%meas(variableSet, index);
if (value <= threshold)
        classification = 'iris1';
else
        classification = 'iris2';
end
disp(numbers);
disp(dataSet);
disp(maxNumber);
disp(value);
disp(classification);

