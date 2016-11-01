function improvement(irisSet1,irisSet2,dataSet)

%Count number of each classification in the dataSet
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
improvementSet1 = entropy - entropySplit1;
improvementSet2 = entropy - entropySplit2;

disp('entropy of original set')
disp(entropy);

disp('entropy of split set 1')
disp(entropySplit1);

disp('entropy of split set 2')
disp(entropySplit2);

disp('improvement to set 1')
disp(improvementSet1);

disp('improvement to set 2')
disp(improvementSet2);

end

