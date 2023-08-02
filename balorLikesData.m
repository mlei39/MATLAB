
function balorLikesData(data, ex_x)

mask = data(:,2)==-99999
ind = 1:length(mask)
in = [ind(mask)]
in_x = [data(in,1)]
data(in,:)=[]
x = data(:,1)
y = data(:,2)

hold on

plot(round(x,2),round(y,2),'rs')

in_y = spline(x,y,in_x)
plot(round(in_x,2),round(in_y,2),'g*')

x = [x; in_x]
y = [y; in_y]
ex_y = interp1(x,y,ex_x,'linear','extrap')
plot(round(ex_x,2),round(ex_y,2),'bd')

xlabel("Balor's age")
ylabel("Balor's love for data")
title("What a wonderful world")
legend("Balor's OG Data","Balor's Hard Work","Balor's Future Love for Data",'Location','southeast','NumColumns',2)

hold off

end