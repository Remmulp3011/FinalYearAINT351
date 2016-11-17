function improvement(entropy, entropySplit1, entropySplit2,irisSet1,irisSet2,dataSet)

%This function is correct as this needs to be done orginally.
%--------------------------------------------------------------------------
%NOTE: The weighted entropy may be calculated in entropyFunction and passed
%here removing the split sets being passed BUT although dataset wont be
%used here it is still needed as it has to be passed to maxSplit from here.
%Try using global variable for dataSet in maxsplit to avoid this?
%--------------------------------------------------------------------------
%Calcualte the improvement
%For improvement this will be the orginal minus the sum of the other
%entropies
%The entropies must be weighted for example if set1 has 90% of the values
%the entropy of set 1 should be multplied by 0.9 and same for set 2. Total
%records is 150 split 1 has 51 split 2 has 99. Using size here to get the
%percentage of records in each set.
improvementValue = entropy - ((entropySplit1 * size(irisSet1,1)/size(dataSet,1)) + (entropySplit2 * size(irisSet2,1)/size(dataSet,1)));

disp('improvement on this split is')
disp(improvementValue);

maxSplit(improvementValue,dataSet);

end

