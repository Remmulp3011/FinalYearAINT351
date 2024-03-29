function entropyFunction(irisSet1,irisSet2,dataSet)

%entropy = -sum(count(unique(dataSet(:,5)))*log2(count(unique(dataSet(:,5))));
%entropy = size(irisSet1{:,5}=='setosa');

%Count number of each classification in the dataSets
setosaCount = sum(strncmp('setosa',dataSet,6));
virginicaCount = sum(strncmp('virginica',dataSet,6));
versicolorCount = sum(strncmp('versicolor',dataSet,6));

setosaCountSplit1 = sum(strncmp('setosa',irisSet1,6));
virginicaCountSplit1 = sum(strncmp('virginica',irisSet1,6));
versicolorCountSplit1 = sum(strncmp('versicolor',irisSet1,6));

setosaCountSplit2 = sum(strncmp('setosa',irisSet2,6));
virginicaCountSplit2 = sum(strncmp('virginica',irisSet2,6));
versicolorCountSplit2 = sum(strncmp('versicolor',irisSet2,6));

%Calculate the probability of each classification
%Need the if statments as if there is not split for that threshold in the
%split set an error will be thrown due to the undefined number.
if(size(dataSet,1)~=0)
    probSetosa = setosaCount(1,5)/size(dataSet,1);
    probVirginica = virginicaCount(1,5)/size(dataSet,1);
    probVersicolor = versicolorCount(1,5)/size(dataSet,1);
else
    probSetosa = 0;
    probVirginica = 0;
    probVersicolor = 0;
end

if(size(irisSet1,1) ~= 0)
    probSetosaSplit1 = setosaCountSplit1(1,size(setosaCountSplit1,2))/size(irisSet1,1);
    probVirginicaSplit1 = virginicaCountSplit1(1,size(virginicaCountSplit1,2))/size(irisSet1,1);
    probVersicolorSplit1 = versicolorCountSplit1(1,size(versicolorCountSplit1,2))/size(irisSet1,1);
else
    probSetosaSplit1 = 0;
    probVirginicaSplit1 = 0;
    probVersicolorSplit1 = 0;
end

if(size(irisSet2,1) ~= 0)
    probSetosaSplit2 = setosaCountSplit2(1,size(setosaCountSplit2,2))/size(irisSet2,1);
    probVirginicaSplit2 = virginicaCountSplit2(1,size(virginicaCountSplit2,2))/size(irisSet2,1);
    probVersicolorSplit2 = versicolorCountSplit2(1,size(versicolorCountSplit2,2))/size(irisSet2,1);
else
    probSetosaSplit2 = 0;
    probVirginicaSplit2 = 0;
    probVersicolorSplit2 = 0;
end

%Calculate the entropy for each classification
entropySetosa = (probSetosa * log2(probSetosa)); 
entropyVirginica = (probVirginica * log2(probVirginica));
entropyVersicolor = (probVersicolor * log2(probVersicolor));
        
%Check if probability is zero because if it is zero and the log is
%carried out in next step the value will return infinity.
if(probSetosaSplit1 ~= 0)
    entropySetosaSplit1 = (probSetosa * log2(probSetosaSplit1)); 
else
    entropySetosaSplit1 = 0;
end

if(probVirginicaSplit1 ~= 0)
    entropyVirginicaSplit1 = (probVirginica * log2(probVirginicaSplit1));
else
    entropyVirginicaSplit1 = 0;
end

if(probVersicolorSplit1 ~= 0)
    entropyVersicolorSplit1 = (probVersicolor * log2(probVersicolorSplit1));
else
    entropyVersicolorSplit1 = 0;
end

if(probSetosaSplit2 ~= 0)
    entropySetosaSplit2 = (probSetosa * log2(probSetosaSplit2));
else
    entropySetosaSplit2 = 0;
end

if(probVirginicaSplit2 ~= 0)
    entropyVirginicaSplit2 = (probVirginica * log2(probVirginicaSplit2));
else
    entropyVirginicaSplit2 = 0;
end

if(probVersicolorSplit2 ~= 0)
    entropyVersicolorSplit2 = (probVersicolor * log2(probVersicolorSplit2));
else
    entropyVersicolorSplit2 = 0;
end

%Sum all of the above entropies
entropy = -(entropySetosa + entropyVirginica + entropyVersicolor);
entropySplit1 = -(entropySetosaSplit1 + entropyVirginicaSplit1 + entropyVersicolorSplit1);
entropySplit2 = -(entropySetosaSplit2 + entropyVirginicaSplit2 + entropyVersicolorSplit2);

% disp('entropy of original set')
% disp(entropy);
% 
% disp('entropy of split set 1')
% disp(entropySplit1);
% 
% disp('entropy of split set 2')
% disp(entropySplit2);

improvement(entropy, entropySplit1, entropySplit2,irisSet1,irisSet2,dataSet);


% irisSet1OnlyVariables = cell2mat(irisSet1(:, 1:4));
% irisSet2OnlyVariables = cell2mat(irisSet2(:, 1:4));
% E = entropy(irisSet1OnlyVariables);
% E2 = entropy(irisSet2OnlyVariables);
% E3 = entropy(dataSet);
% disp('Entropy is:');
% disp(E);
% disp(E2);
% disp(E3);
%sum of the log of each probabilty of each class of iris in each set gives
%the entropy
end

