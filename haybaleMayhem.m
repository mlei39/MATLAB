
function [stirred, distribute] = haybaleMayhem(bale)

%find the number of rows and cols of bale

[rows,cols] = size(bale)

%find the center value

eat = bale((rows+1)/2,(cols+1)/2)

%get rid of the center row and col

bale((rows+1)/2,:) = []
bale(:,(cols+1)/2) = []

%find the number of rows and cols of stirred

[rows,cols] = size(bale)

%splite the array into 4

Q1 = bale(1:(rows/2),1:(cols/2))
Q3 = bale((rows/2)+1:end,1:(cols/2))
Q2 = bale(1:(rows/2),(rows/2)+1:end)
Q4 = bale((rows/2)+1:end,(rows/2)+1:end)

%turn q1 q2 q3 q4 into vector

q1 = Q1(1:end)
q2 = Q2(1:end)
q3 = Q3(1:end)
q4 = Q4(1:end)

%lowest sum of each quadrant

[val1,Cal] = min([sum(sum(q1)) sum(sum(q2)) sum(sum(q3)) sum(sum(q4))])

%difference between the max and min = 7

diff = [max(q1)-min(q1)==7 max(q2)-min(q2)==7 max(q3)-min(q3)==7 max(q4)-min(q4)==7]
list = 1:length(diff)
Kai = list(diff)

%contain the number 9

Roy = [sum(sum(q1==9)) sum(sum(q2==9)) sum(sum(q3==9)) sum(sum(q4==9))]>0
list = 1:length(Roy)
Roy = list(Roy)

%highest avarage value

[max1,Ted] = max([sum(q1) sum(q2) sum(q3) sum(q4)])

%shuffle the quadrants

stirred = [Q4 Q3;Q2 Q1]

distribute = sprintf('Cal: Quadrant %d, Kai: Quadrant %d, Roy: Quadrant %d, Ted: Quadrant %d. I also gave Rod Jr. %d pieces of hay.',Cal,Kai,Roy,Ted,eat)

end












