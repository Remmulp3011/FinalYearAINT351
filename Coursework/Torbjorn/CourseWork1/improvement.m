function improvement(irisSet1,irisSet2,dataSet)

%This function is correct as this needs to be done orginally.

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
probSetosa = setosaCount(1,5)/size(dataSet,1);
probVirginica = virginicaCount(1,5)/size(dataSet,1);
probVersicolor = versicolorCount(1,5)/size(dataSet,1);

probSetosaSplit1 = setosaCountSplit1(1,5)/size(irisSet1,1);
probVirginicaSplit1 = virginicaCountSplit1(1,5)/size(irisSet1,1);
probVersicolorSplit1 = versicolorCountSplit1(1,5)/size(irisSet1,1);

probSetosaSplit2 = setosaCountSplit2(1,5)/size(irisSet2,1);
probVirginicaSplit2 = virginicaCountSplit2(1,5)/size(irisSet2,1);
probVersicolorSplit2 = versicolorCountSplit2(1,5)/size(irisSet2,1);

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

%Calcualte the improvement
%For improvement this will be the orginal minus the sum of the other
%entropies
%The entropies must be weighted for example if set1 has 90% of the values
%the entropy of set 1 should be multplied by 0.9 and same for set 2. Total
%records is 150 split 1 has 51 split 2 has 99. Using size here to get the
%percentage of records in each set.
improvement = entropy - ((entropySplit1 * size(irisSet1,1)/size(dataSet,1)) + (entropySplit2 * size(irisSet2,1)/size(dataSet,1)));


disp('entropy of original set')
disp(entropy);

disp('entropy of split set 1')
disp(entropySplit1);

disp('entropy of split set 2')
disp(entropySplit2);

disp('improvement on this split is')
disp(improvement);

end

