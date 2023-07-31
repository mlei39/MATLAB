

function [r] = radius(s)

%s: The side length of the equilateral triangle
%r: The radius of the inscribed circle

r = round(s*sqrt(3)/6,2)

end



