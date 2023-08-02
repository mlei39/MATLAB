
function oliverWroteThisProblem(filename,word)

%access the text file
door = fopen(filename,'r')
line = fgetl(door)
numlist = []
cell = {}
count = 0
clist = []

%read through lines and get the text into a cell array
while ischar(line)
    [num,rest] = strtok(line)
    numlist = [numlist str2num(num)]
    cell(end+1,:) = {line}
    line = fgetl(door)
end

fclose(door)

%sort the cell array
[~,order] = sort(numlist)
cell = cell(order,:)

%and turn it into a vector
[row,col] = size(cell)
vec = []
a = 1

while a<=row
    vec = [vec cell2mat(cell(a,:)) char(10)]
    a = a+1
end

%output the new text
newname = [filename(1:end-4) '_oliverStyle.txt']
door = fopen(newname,'w')
fprintf(door,'%s',vec)
fclose(door)


%count the number of the word in each line
for x = 1:row
    
    line = cell2mat(cell(x,:))
    while ~isempty(line)
        [token,line] = strtok(line)
        if strcmp(token,word)
            count = count+1
        end
    end
 
    %make the count vector
    clist = [clist count]

end

%plotting
x = 1:length(clist)
y = [0 clist]
x = [0 x]
plot(x,y,'g')
xlabel('line number') 
ylabel('total use')
axis square

end


