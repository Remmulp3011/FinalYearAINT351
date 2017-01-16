function initQ

%INITQ: Function to initial a new Q-table of random values between 0.01 and
%0.1 of size 11 by 4.
global qTable;
qTable = 0.01 + (0.1-0.01)*rand(11,4);

%Plot the results
% figure
% surf(qTable)
% title('Q-function table values')
% xlabel('Actions')
% ylabel('States')
% zlabel('Q-values')
% axis([1,4,1,11,0,1]);

end

