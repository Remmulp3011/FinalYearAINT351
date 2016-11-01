function learnDescisionTree(variables, classification)

global variableSet;
variableSet = variables;

measData = num2cell(variables);

global dataSet;
dataSet =[measData,classification];

global variableNum;
variableNum = 4;

global thresholdValue;
thresholdValue = 1;

split(variableNum,variableSet,thresholdValue);

entropyFunction(dataSet);

end

