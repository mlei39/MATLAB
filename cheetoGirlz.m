
function [message, sentence] = cheetoGirlz(o_char, o_double)

%sorting the vector of doubles in ascending order
%creating the indices that shows the order of sorted doubles
[s_double, inds] = sort(o_double) 

%use the indices to sort the encrypted message
message = o_char(inds)

%locate the space
space = strfind(message, char(32))

%location of char that needs to be upper case
location = [1,3,space+1,space+3]

%Capitalize the 1st and 3rd letters of first word
message(location) = upper(message(location))

%Remove all spaces between words
message(space) = []

%Output the description
sentence = sprintf('There were %d word(s) before I used ChEetoCaSe.', length(space)+1)

end