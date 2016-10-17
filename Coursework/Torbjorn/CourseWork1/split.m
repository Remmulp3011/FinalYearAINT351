function [classification] = split(variable, index, threshold)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global numbers;
global dataSet;
global indexNumber;
value = numbers(variable, index);
maxNumber = max(numbers);

%For loop to loop through the data set intervals of records going from 0
%(value passed from learnDecisisonTree) to the max number. Use this to
%determine the type and populate into the next column.


%meas(variableSet, index);
for (i =0; indexNumber <= size(meas); i++)
if (value <= threshold)
    add to subset 1
        classification = 'iris1';
else
    add to subset 2
        classification = 'iris2';
end
end
disp(numbers);
disp(dataSet);
disp(maxNumber);
disp(value);
disp(classification);

