%select number of samples for each set
samples1 = 10000;
samples2 = 10000;

%define the mean for each set
meanSet1 = [-4 -1]';
meanSet2 = [3 4]';

%Abrituaryly set the mean for this at first
newMeanSet1 = [1 1]';
newMeanSet2 = [1 1]';

%define the standard deviation for each set 
stanDevSet1 = 0.75;
stanDevSet2 = 2;

%Create a Matrix of 2 X samples (2xn) with the specified mean and standard 
%deviation using 'standardDeviation * randn(2,n) + mean;' for each data set
uncorrelatedData1 = stanDevSet1 * randn(2,samples1) + meanSet1;

uncorrelatedData2 = stanDevSet2 * randn(2,samples2) + meanSet2;

%Concatenate the two sets into a single dataset
TrainData = [uncorrelatedData1; uncorrelatedData2];

%Define the x and y values for the 4 dimensions
x1 = TrainData(1,:);
y1 = TrainData(2,:);

x2 = TrainData(3,:);
y2 = TrainData(4,:);

oldMean1 = 0;
oldMean2 = 1;
newMean1 = 2;
newMean2 = 3;

f = 0;

set1 = zeros(2,10000);
set2 = zeros(2,10000);

n = 1;

while oldMean1 ~= newMean1 && oldMean2 ~= newMean2 %isequal(cm1,cm2) == 0%isequal(newMeanSet1,meanSet1) == 0 && isequal(newMeanSet2,meanSet2) == 0%(newMeanSet1(1,1) ~= meanSet1(1,1)) && (newMeanSet2(1,1) ~= meanSet2(1,1)) && (newMeanSet1(2,1) ~= meanSet1(2,1)) && (newMeanSet2(2,1) ~= meanSet2(2,1))
    
    set1Column = 1;
    set2Column = 1;
    
while n <= size(TrainData,2)
    if f == 0
        x = TrainData(1,n);
        y = TrainData(2,n);
    else
        x = set1(1,n);
        y = set1(2,n);
    end

    D1 = norm(meanSet1 - [x y]);
    D2 = norm(meanSet2 - [x y]);
    if(D1 < D2)
        set1(1,set1Column) = x;
        set1(2,set1Column) = y;
        set1Column = set1Column + 1;
        %plot(x,y,'r.');
    else
        set2(1,set2Column) = x;
        set2(2,set2Column) = y;
        set2Column = set2Column + 1;
        %plot(x,y,'b.');
    end
    n = n + 1;
end
n = 1;
while n <= size(TrainData,2)
    if f == 0
        x = TrainData(3,n);
        y = TrainData(4,n);
    else
        x = set2(1,n);
        y = set2(2,n);
    end
    
    D1 = norm(meanSet1 - [x y]);
    D2 = norm(meanSet2 - [x y]);
    if(D1 < D2)
        set1(1,set1Column) = x;
        set1(2,set1Column) = y;
        set1Column = set1Column + 1;
    else
        set2(1,set2Column) = x;
        set2(2,set2Column) = y;
        set2Column = set2Column + 1;
    end
    n = n + 1;
end
n=1;
newMeanSet1 = nanmean(set1);
newMeanSet2 = nanmean(set2);

oldMean1 = newMean1;
oldMean2 = newMean2;

newMean1 = norm(newMeanSet1);
newMean2 = norm(newMeanSet2);

meanSet1 = newMeanSet1';
meanSet2 = newMeanSet2';

f = f+1;
end

disp(f);
figure
hold on
plot(set1(1,:),set1(2,:),'r.');
plot(set2(1,:),set2(2,:),'b.');
title('K-means labelling of training data');
xlabel('x-value');
ylabel('y-value');
legend('classidx == 1','classidx == 2');

% figure
% hold on
% plot(x1,y1,'b.');
% plot(x2,y2,'b.');
% %h = plot(TrainData(:,1), TrainData(:,2),'b.');
% %set(h,'linewidth',3);
% title('2D TrainData dataset');
% xlabel('x-value');
% ylabel('y-value');
% legend('TrainData'); 

%calculate covariance matrix
%cm = cov(TrainData);

%[V,D] = eig(A) returns diagonal matrix D of eingenvalues
%[V,D] = eig(cm);

%Compute principle components PCA
%[coeff, score, latent, tsquared, explained] = pca(TrainData);

%find euclidean distance of data sets

% figure
% hold on
% while D > 100
% %Compute mean
% D = norm(uncorrelatedData1 - uncorrelatedData2);
% newMean1 = nanmean(uncorrelatedData1);
% newMean2 = nanmean(uncorrelatedData2);
% uncorrelatedData1 = randn(2,samples1) + newMean1;
% uncorrelatedData2 = randn(2,samples2) + newMean2;
% x1 = uncorrelatedData1(1,:);
% y1 = uncorrelatedData1(2,:);
% x2 = uncorrelatedData2(1,:);
% y2 = uncorrelatedData2(2,:);
% end
% plot(x1,y1,'b.');
% plot(x2,y2,'r.');
% title('2D raw datasets');
% xlabel('x-value');
% ylabel('y-value');
% legend('dataSet1','dataSet2');

% figure
% hold on
% h = plot(TrainData(:,1),TrainData(:,2),'b.');
