
function thief = realRAT(mask)

%creat a list of ascending whole number with the length of mask
list = 1:length(mask)

%pick the number that corresponds to the location of the only "false"
num = list(~mask)

%divide the number by 5 and round up
num = ceil(num/5)

% print the statement
thief = sprintf('RAT number %d does not attend Georgia Tech!', num)

end

