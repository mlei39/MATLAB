
function str = headsUp(velo, angle)

angle = angle*pi/180
t = 2*sin(angle)*velo/9.8
x = cos(angle)*velo*t

str = sprintf('Valor threw the ball super high into the air! After %d seconds the ball was %d meters away!',round(t),round(x))

xval = linspace(0,round(t),100)

subplot(1,3,1)
yval = cos(angle).*velo.*xval
plot(xval,yval,'or-')
title('Time v. Horizontal Displacement')

subplot(1,3,2)
yval = velo.*sin(angle).*xval-4.9*(xval.^2)
plot(xval,yval,'dg:')
title('Time v. Vertical Displacement')

subplot(1,3,3)
yval = sin(angle)*velo-9.8*xval
plot(xval,yval,'*k--')
title('Time v. Vertical Velocity')

end