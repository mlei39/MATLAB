
function out = aNormalDay(name)

door = fopen(name)
line = fgetl(door)
yval = []

while ~isempty(line)
[number,line] = strtok(line,',')
yval = [yval str2num(number)]
end

fclose(door)

xval = 1:length(yval)

dx = diff(xval)
dy = diff(yval)
deri = dy./dx

inte = cumtrapz(xval,yval)

deri = sort(deri)
yval = sort(yval)

out = []

out = help(deri,1,out)
out = help(yval,2,out)
out = help(inte,3,out)

end


function out = help(vec,x,out)

long = length(vec)
maxi = max(vec)

    if mod(long,2)==0
    medi = (vec(end/2)+vec(end/2+1))/2
    vec1 = vec(1:end/2)
    vec2 = vec(end/2+1:end)
    else
    medi = vec(round(end/2))
    vec1 = vec(1:floor(end/2))
    vec2 = vec(ceil(end/2):end)
    end

Q1 = helphelp(vec1)
Q3 = helphelp(vec2)

IQR = Q3-Q1
top = Q3+IQR*1.5
bot = Q1-IQR*1.5
mask = vec>top|vec<bot
outliers = sum(mask)

out(x).Length = long
out(x).MaxValue = maxi
out(x).Median = medi
out(x).Q1 = Q1
out(x).Q3 = Q3
out(x).Outliers = outliers

end


function Q = helphelp(vec)

if mod(length(vec),2)==0
    Q = (vec(end/2)+vec(end/2+1))/2
else
    Q = vec(round(end/2))    
end

end








