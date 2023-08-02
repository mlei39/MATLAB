
function veryMandatoryProblem(name)

door = fopen(name)
line = fgetl(door)
data = []

while ischar(line)
    while ~isempty(line)
        [took,line] = strtok(line,',')
        data = [data str2num(took)]
    end
line = fgetl(door)
end

xval = [data(1:2:end-1)]
yval = [data(2:2:end)]
long = length(xval)
list = []
vec = []

for first = 1:long
    for second = 1:long
        dis = sqrt((xval(first)-xval(second))^2+(yval(first)-yval(second))^2)
        list = [list dis]
    end
    list = sort(list)
    min = list(2)
    vec = [vec min]
    list = []
end

[~,order] = sort(vec,'d')
mask = order(1:5)
xval(mask) = []
yval(mask) = []

plot(xval,yval,'bd')
axis equal

fclose(door)

end