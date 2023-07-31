
function new = shift(old,shift)

voc = old + shift 
% turning the old letter into ASCII code, and then shift the code by "shift"
new = char(voc) 
% turning the shifted code back into letter

end

