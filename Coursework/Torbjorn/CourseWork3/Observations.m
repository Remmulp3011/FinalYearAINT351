function Observations(state)
%OBSERVATIONS Summary of this function goes here
%   Detailed explanation goes here
global observation;

if state == 1 || state == 2 || state == 3
    observation = 14;
end

if state == 4 || state == 5 || state == 6
    observation = 10;
end

if state == 7
    observation = 9;
end

if state == 8 || state == 10
    observation = 5;
end

if state == 9
    observation = 1;
end

if state == 11
    observation = 3;
end

end

