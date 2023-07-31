
function [new,type] = decode(old)

new = str2num(old)
%Convert this character into its value as a double. 

new = new+18 %Add 18
new = new/4 %Divide by 4
new = new^3 %Cube it
new = sqrt(new) %Take the square root of it
new = round(new) %Round it to the nearest whole number

%Repeat these steps four more times
new = new+18
new = new/4
new = new^3
new = sqrt(new)
new = round(new)

new = new+18
new = new/4
new = new^3
new = sqrt(new)
new = round(new)

new = new+18
new = new/4
new = new^3
new = sqrt(new)
new = round(new)

new = new+18
new = new/4
new = new^3
new = sqrt(new)
new = round(new)

new = char(new)

type = class(new)

end














