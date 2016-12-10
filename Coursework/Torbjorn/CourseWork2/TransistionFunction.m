function TransistionFunction(state,action)

%TransistionFunction: building the environement for the transitions. Taking
%an action and state and returning the next state from taking that action
%from that current state.

global reward;
global nextState;

%Possibilities for state 1
if(state == 1)
    if(action == 1)
        nextState = 4;
    else
        nextState = state;
    end
end

%Possibilities for state 3
if(state == 3)
    if(action == 1)
        nextState = 6;
    else
        nextState = state;
    end
end

%Possibilities for state 4
if(state == 4)
    if(action == 1)
        nextState = 7;
    else
        if(action == 3)
            nextState = 1;
        else
            nextState = state;
        end
    end
end

%Possibilities for state 5
%Action 3 from state 5 will result in the goal state (2) being achieved.
if(state == 5)
    if(action == 1)
        nextState = 9;
    else
        if(action == 3)
            nextState = 2;
        else
            nextState = state;
        end
    end
end

%Possibilities for state 6
if(state == 6)
    if(action == 1)
        nextState = 11;
    else
        if(action == 3)
            nextState = 3;
        else
            nextState = state;
        end
    end
end

%Possibilities for state 7
if(state == 7)
    if(action == 2)
        nextState = 8;
        else
        nextState = state;
    end
end

%Possibilities for state 8
if(state == 8)
    if(action == 2)
        nextState = 9;
    else
        if(action == 4)
            nextState = 7;
        else
            nextState = state;
        end
    end
end

%Possibilities for state 9
if(state == 9)
    if(action == 2)
        nextState = 10;
    else
        if(action == 4)
            nextState = 8;
        else
            if(action == 3)
                nextState = 5;
            else
                nextState = state;
            end
        end
    end
end

%Possibilities for state 10
if(state == 10)
    if(action == 2)
        nextState = 11;
    else
        if(action == 4)
            nextState = 9;
        else
            nextState = state;
        end
    end
end

%Possibilities for state 11
if(state == 11)
    if(action == 3)
        nextState = 6;
    else
        if(action == 4)
            nextState = 10;
        else
            nextState = state;
        end
    end
end

qLearning(state,action,nextState,reward);

end

