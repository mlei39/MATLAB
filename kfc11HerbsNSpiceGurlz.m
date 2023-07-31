
function spicy = kfc11HerbsNSpiceGurlz(scary, baby)

%find the length of half of the first input
middle = floor(length(scary)/2)

%find the first half
first = scary(1:middle)

%find the second half
second = scary(middle+1:end)

%swap the first and second halves of the first input
scary = [second,first]

%reverse the order of the second input
baby = baby(end:-1:1)

%weave the two vector into a single output vector. 
    %calculate the length of the output vector
    compare = [length(scary),length(baby)]
    long = max(compare)*2
    
    %create a space of that length
    space(1:long) = ' '
    
    %put the scary and baby in the space
    space(1:2:length(scary)*2-1) = scary
    space(2:2:length(baby)*2) = baby   

    spicy = space

%Turn all the characters uppercase
spicy = upper(spicy)
    
%lowercase every 5th letter starting from the 2nd index. 
spicy(2:5:end) = lower(spicy(2:5:end))


end






