function learnDescisionTree(variables, classification)

global variableSet;
variableSet = variables;

measData = num2cell(variables);

global dataSet;
dataSet =[measData,classification];

global variableNum;
variableNum = 1;

global rowNum;
rowNum = 1;

global thresholdValue;
thresholdValue = 5;

split(variableNum,rowNum,thresholdValue);

end

