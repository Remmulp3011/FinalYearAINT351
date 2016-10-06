function [classification] = split(variableSet, index, threshold)
%Get the VarName of the data (column), index to show the cell of the data (row), and threshold for the greater or less than    
%Output value of the classification depending on the threshold and value
value = fopen(variableSet, index);
%meas(variableSet, index);
if (value <= threshold)
        classification = iris1;
else
        classification = iris2;
end

