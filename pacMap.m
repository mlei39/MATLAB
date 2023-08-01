
function str = pacMap(map)

%find the size of the array
[rows,cols]=size(map)

%produce an array of indices of quadrant number
big = rows/2
q1 = ones(big,big)
q2 = ones(big,big)*2
q3 = ones(big,big)*3
q4 = ones(big,big)*4
quadrant = [q1,q2;q3,q4]

%determine which corner of the map Pac-Man is located in
corner = quadrant(map==7)

%index out the entire quadrant as a subarray
if corner==1
    sub = map(1:big,1:big)
elseif corner==2
    sub = map(1:big,big+1:end)
elseif corner==3
    sub = map(big+1:end,1:big)
else
    sub = map(big+1:end,big+1:end)
end

%find number of "0"
count = sum(sum(sub==0))

%define "pos" and "neg"
neg = sub<0
pos = sub>0&sub~=1&sub~=7

%determine if pos and neg in the same column/row
[row1,col1] = find(sub>0&sub~=1&sub~=7)
[row2,col2] = find(sub<0)

%there are "neg" and no "pos" 
if sum(sum(neg))>0&sum(sum(pos))==0
    str = sprintf('Pac-Man was eaten by ghosts with %d uneaten pellets remaining.',count)

%there are "neg" and "pos", "pos" is in the same column/row as "neg"
elseif sum(sum(neg))>0&sum(sum(pos))>0&sum(row1==row2)+sum(col1==col2)>=1
    str = sprintf('Pac-Man could not get to the power pellet and was eaten by ghosts with %d uneaten pellets remaining.',count)
    
%there are "neg" and "pos", "pos" is not in the same column/row as "neg"
elseif sum(sum(neg))>0&sum(sum(pos))>0&sum(row1==row2)+sum(col1==col2)==0
    str = sprintf('Pac-Man got to the power pellet and ate all %d uneaten pellets!',count)
    
%there are no "neg" (irrespective of power pellet presence)
elseif sum(sum(neg))==0
    str = sprintf('Pac-Man encountered no ghosts and ate all %d uneaten pellets!',count)
end

end



