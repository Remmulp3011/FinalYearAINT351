function [location] = description(playerLocation)
    
    if playerLocation == 0
        location = 'You are by a babbling brook';
    elseif playerLocation == 1
        location = 'You are high in some misty mountains';
    elseif playerLocation == 2
        location = 'You are in a sunny field';
    elseif playerLocation == 3
        location = 'You are under a great oak';
    else
        location = 'You are lost';
    end
end

