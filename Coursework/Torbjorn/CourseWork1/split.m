function [classification] = split(variable, index, threshold)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
global numbers;
value = numbers(variable, index);
%meas(variableSet, index);
if (value <= threshold)
        classification = 'iris1';
else
        classification = 'iris2';
end
message = sprintf('%d %d %d', variable, index, threshold);
disp(message);
disp(value);
disp(classification);

