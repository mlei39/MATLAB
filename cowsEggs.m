
function [groups,left] = egg(number)

groups = floor(number/12)
%finds # of dozens of egg

left = number-groups*12
%finds the remainder

end
