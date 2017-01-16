function qLearning(state,action,resultingState,reward)

%Use a temporal discount rate of 0.9 and a learning rate of 0.2
global qTable;
global endTrialState;
learningRate = 0.2;
temporalDiscount = 0.9;

%Implement the Q-learning algorithm using the values provided
qValue = qTable(state,action) + learningRate * (reward + temporalDiscount * max(qTable(resultingState,:))-qTable(state,action));

qTable(state,action) = qValue;

endTrialState = resultingState;

end

