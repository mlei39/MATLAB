
function [map, route] = gtNightAtSixFlags(arr, attraction, direction)

%'.' : Indicates no change in direction
%'X' : Indicates the end of the park route
%Any letter besides 'X': Indicates you’ve hit an attraction 

x = 1
y = 1
dir_now = 'v'
route = []

%repeat the loop when we haven't reach the end
while (arr(x,y)~='X') 
    
    %the cases that there is no change in direction
    if arr(x,y)=='.'
        arr(x,y)='#'             %notes that we've been here
        
        if dir_now == 'v'
            x = x+1
        elseif dir_now == '^'
            x = x-1
        elseif dir_now == '>'
            y = y+1
        elseif dir_now == '<'
            y = y-1
        end                      %move (x,y) based on the direction
    
    %the cases that there is changes in direction    
    else
        %make a list of the first letters of attraction
        list = attraction(:,1)'
        %find the location of the attraction
        which = strfind(list(1:end),arr(x,y))
        %concatenate the new attraction to the list
        route = [route attraction(which,:) ', ']
        %change the status of current direction
        dir_now = direction(which)
        
        arr(x,y)='#'             %notes that we've been here
        
        if dir_now == 'v'
            x = x+1
        elseif dir_now == '^'
            x = x-1
        elseif dir_now == '>'
            y = y+1
        elseif dir_now == '<'
            y = y-1
        end                      %move (x,y) based on the direction
        
    end
    
end

%get rid of the ", " at the end of the route
if sum(strfind(route,','))>0
route(length(route)) = []
route(length(route)) = []
end

%output the route description
route = sprintf('I went to GT Night at Six Flags and rode %s!',route)

map = arr

end



