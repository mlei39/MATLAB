
function oilField(side,angle)

x = 0
y = 0
xval = [x]
yval = [y]
angle = cumsum(angle)

hold on

for which = 1:length(side)
x = x+cosd(angle(which))*side(which)
y = y+sind(angle(which))*side(which)

xval = [xval x]
yval = [yval y]

end
plot(xval,yval,'k-')
hold off

axis equal

end