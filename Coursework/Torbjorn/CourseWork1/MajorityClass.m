function MajorityClass(set)

%Count number of each classification in the dataSets
setosaCount = sum(strncmp('setosa',set,6));
virginicaCount = sum(strncmp('virginica',set,6));
versicolorCount = sum(strncmp('versicolor',set,6));



if setosaCount > virginicaCount && setosaCount > versicolorCount
    disp('Majority class is setosa');
    majorityClass = setosa;
end

if virginicaCount > setosaCount && virginicaCount > versicolorCount
    disp('Majority class is virginica');
    majorityClass = virginica;
end

if versicolorCount > setosaCount && versicolorCount > versicolorCount
     disp('Majority class is versicolor');
     majorityClass = versicolor;
end
end

