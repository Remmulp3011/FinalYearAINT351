function describeLocation()
    global playerLocation;
    
    if playerLocation == 0
        disp('You are by a babbling brook');
    elseif playerLocation == 1
        disp('You are high in some misty mountains');
    elseif playerLocation == 2
        disp('You are in a sunny field');
    elseif playerLocation == 3
        disp('You are under a great oak');
    else
        disp('You are lost');
    end
        
end