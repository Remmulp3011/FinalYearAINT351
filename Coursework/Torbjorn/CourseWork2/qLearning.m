function qLearning(state,action,resultingState,reward)
%QLEARNING: Insert the values into the equation so with each iteration you 
%are updating the values of random q-table. s' (resultingState) being the 
%next state, a' being the next action, s (state) being the intial state and a 
%(action) being the intial action. Goal is to update the values based on the rewards
%so the closer to the goal you get the closer to 10 you get. You update the 
%cell of s' and a' with the new value. To start it will be shuffling around 
%the values but with each iteration you start to propagate through updating
%the cells to get closer to the reward. To start reward value will be 10 or 0 
%(based on the reward function).

%Use a temporal dicscount rate of 0.9 and a learning rate of 0.2
global qTable;
global endTrialState;
learningRate = 0.2;
temporalDiscount = 0.9;

qValue = qTable(state,action) + learningRate * (reward + temporalDiscount * max(qTable(resultingState,:))-qTable(state,action));

qTable(state,action) = qValue;

endTrialState = resultingState;

end

