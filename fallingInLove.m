
function [fixed] = fallingInLove(first, second, word)

First = first'

a = strfind(first(1:end),word) 
b = strfind(First(1:end),word)
c = strfind(first(1:end),word(end:-1:1)) 
d = strfind(First(1:end),word(end:-1:1))

x = [a,b,c,d]
mask = [x==[a,1],x==[b,1],x==[c,1],x==[d,1]]
ind = 1:5
which = ind(mask)

l = length(word)-1

A = second
B = second'
C = second
D = second'

A(x:x+l) = word
B(x:x+l) = word
C(x:x+l) = word(end:-1:1)
D(x:x+l) = word(end:-1:1)

B = B'
D = D'

fixed = [A,B,C,D]
[rows,cols] = size(second)
fixed = fixed(:,(which*cols-cols+1):which*cols)

end
