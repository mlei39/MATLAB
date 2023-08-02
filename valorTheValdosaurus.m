
function valorTheValdosaurus(arr)

[arr(1,:),order] = sort(arr(1,:))
arr(2,:) = arr(2,order)
x = [arr(1,:)]
y = [arr(2,:)]
ave = sum(y)/length(y)

hold on

plot(x,y,'gd')
power = 1
r2 = 0

while r2<=0.95
    
coeff = polyfit(x,y,power)
newy = polyval(coeff,x)

up = 0
down = 0

    for loc = 1:length(x)
    up = up+(y(loc)-newy(loc))^2
    down = down+(y(loc)-ave)^2
    end
    
r2 = 1-up/down

    if r2<=0.95
        plot(x,newy,'r--')
    else
        coeff = polyfit(x,y,power)
        newy = polyval(coeff,x)
        plot(x,newy,'b')
    end

power = power+1
    
end

hold off

end




