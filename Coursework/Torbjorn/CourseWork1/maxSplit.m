function [ output_args ] = maxSplit( input_args )
%MAXSPLIT Summary of this function goes here
%   Detailed explanation goes here

%Must loop through each variable and each value of each veriable and split
%on this and calculate the improvement (see improvement function).
%Subsitute out the thresehold value in the learnDecisionTree function for
%the value in that varibale list, this is what will be split on. Do this
%for each value and keep record of only the max improvement value, others
%can be deleted. Use the unique function and sub out values to loop through
%in a for statement and then pass to improvement function to calcualte the
%improvement inorder to get the max improvement.

end

