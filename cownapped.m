
function [r] = physics(rou,v)%The radius of the planet

r = round(sqrt(3*v^2/(8*pi*rou*6.6743*10^-11)),3)

end



