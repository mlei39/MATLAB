
function [sen, new] = cornMazeArchitect(double, char)

%Reshape the char array to match the dimensions of the double array
[rows,cols] = size(double)
char = reshape(char,rows,cols)

%Sort the first column of the char array in ascending order 
[char(:,1),inds] = sort(char(:,1))

%Use the indices from sorting to sort the rows of the double array.
double = double(inds,:)

%Check the second row of the double array for even numbers 
odd = ~(mod(double(2,:),2)==0)

%delete the corresponding columns in both arrays.
double = double(:,odd)
char = char(:,odd)

%sum across the rows of the char array, cast it to type double
right = sum(char,2)

%append this it to the right end of the double array.

new = [double,right]

%corn that is divisible by 3 
mask1 = mod(double,3)==0

%corn having 'b' in the char array
mask2 = char=='b'

%find number of “bad corn” in the maze
num = sum(sum(mask1&mask2))

sen = sprintf('There''s still %d bad corn(s) in the maze!', num)

end
