function initQ
%INITQ Summary of this function goes here
%   Detailed explanation goes here
global qTable;
qTable = 0.01 + (0.1-0.01)*rand(11,4);

figure
surf(qTable)
title('Q-function table values')
xlabel('Actions')
ylabel('States')
zlabel('Q-values')
%axis = [xmin,xmax,ymin,ymax,zmin,zmax]
axis([1,4,1,11,0,1])

end

