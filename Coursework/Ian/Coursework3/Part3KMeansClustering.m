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

%Assigned arbitrary values for the means of the norm data
oldMean1 = 0;
oldMean2 = 1;
newMean1 = 2;
newMean2 = 3;

%Number of iterations through the outer while loop starting at 1
iterationNumber = 1;

%Define an empty matrix for the cluster datasets
classidx1 = [];
classidx2 = [];

%Variable for the while loop
n = 1;

%Compare the norm means for the cluster to determine if there is a change
%or not
while oldMean1 ~= newMean1 && oldMean2 ~= newMean2
    %Variables to show which column in the matrix to insert the data. Start
    %at 1 with each new iteration
    classidx1Column = 1;
    classidx2Column = 1;
    
    %If on the first iteration enter this in order to use the TrainData
    %as the intial plot/ clusters.
    if iterationNumber == 1
        while n <= size(TrainData,2)
            %Assign the x and y values from the Train data
            x = TrainData(1,n);
            y = TrainData(2,n);
            
            %Calculate the distance from the centroid of each clusters
            %for each point in the provided dataset
            distance1 = norm(meanSet1 - [x y]);
            distance2 = norm(meanSet2 - [x y]);
            %Assign the values to the cluster which it is closest to
            if(distance1 < distance2)
                classidx1(1,classidx1Column) = x;
                classidx1(2,classidx1Column) = y;
                classidx1Column = classidx1Column + 1;
            else
                classidx2(1,classidx2Column) = x;
                classidx2(2,classidx2Column) = y;
                classidx2Column = classidx2Column + 1;
            end
            n = n + 1;
        end
        %Reset n back to one for the next dataset
        n = 1;
        %---The below while block is the same as above for the second
        %dataset
        while n <= size(TrainData,2)
            x = TrainData(3,n);
            y = TrainData(4,n);
            
            distance1 = norm(meanSet1 - [x y]);
            distance2 = norm(meanSet2 - [x y]);
            
            if(distance1 < distance2)
                classidx1(1,classidx1Column) = x;
                classidx1(2,classidx1Column) = y;
                classidx1Column = classidx1Column + 1;
            else
                classidx2(1,classidx2Column) = x;
                classidx2(2,classidx2Column) = y;
                classidx2Column = classidx2Column + 1;
            end
            n = n + 1;
        end
        n=1;
    %Enter this else statement on any iteration number except the first
    else
        %Iterate through each element of the matrix in the first class
        %dataset
        while n <= size(classidx1,2)
            %Assign the x and y values
            x = classidx1(1,n);
            y = classidx1(2,n);
            
            %Calculate the distance from the centroid of each cluster
            distance1 = norm(meanSet1 - [x y]);
            distance2 = norm(meanSet2 - [x y]);
            %Assign the values to the cluster which it is closest to
            if(distance1 < distance2)
                classidx1(1,classidx1Column) = x;
                classidx1(2,classidx1Column) = y;
                classidx1Column = classidx1Column + 1;
            else
                classidx2(1,classidx2Column) = x;
                classidx2(2,classidx2Column) = y;
                classidx2Column = classidx2Column + 1;
            end
            n = n + 1;
        end
        %Reset for the next while loop
        n = 1;
        %---Do the same as above for the possible second dataset and assign
        %them to the cluster they are closest to
        while n <= size(classidx2,2)
            x = classidx2(1,n);
            y = classidx2(2,n);
            
            distance1 = norm(meanSet1 - [x y]);
            distance2 = norm(meanSet2 - [x y]);
            if(distance1 < distance2)
                classidx1(1,classidx1Column) = x;
                classidx1(2,classidx1Column) = y;
                classidx1Column = classidx1Column + 1;
            else
                classidx2(1,classidx2Column) = x;
                classidx2(2,classidx2Column) = y;
                classidx2Column = classidx2Column + 1;
            end
            n = n + 1;
        end
        n=1;
    end
    
    %Calculate the means for the new data sets again.
    newMeanSet1 = nanmean(classidx1);
    newMeanSet2 = nanmean(classidx2);
    
    %Assign these newly calculated mean values to the variables used above
    %in the calculations for the next iteration.
    meanSet1 = newMeanSet1';
    meanSet2 = newMeanSet2';
    
    %Assign this mean the was just used in above loops to a new varible.
    %This is done to compare if the mean has changed (centroid) in the
    %outer most while loop
    oldMean1 = newMean1;
    oldMean2 = newMean2;
    
    %Create the norm value for the new mean values. These will be used with
    %the oldMean values to determine if the centroids  have moved.
    newMean1 = norm(newMeanSet1);
    newMean2 = norm(newMeanSet2);
    
    %Add one to the iteration number to keep track of how many times the
    %process has been executed.
    iterationNumber = iterationNumber+1;
end