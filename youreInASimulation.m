
function sentence = youreInASimulation(file)

directory = dir()

%go through all the files and find the full name of the target file
for a = 1:length(directory)
    if contains(directory(a).name,file)
    next = directory(a).name
    end
end

%get the extension of the file name
[took,ext] = strtok(next,'.')
x=0
list = {}

%each of this outer loop opens a new file
while x == 0
    %open the next file
    door = fopen(next)
    line = fgetl(door)
    next = ''
    %this inner loop go through each line
    while ischar(line)
        list = [list line]
        if contains(line,ext)
          next = line %noting the next file to open
        end
        line = fgetl(door) %go to the next line
    end
    %stop the loop if next is empty
    if strcmp(next,'')
        x = 1 
    end
    
    fclose(door)
    
end

%output the last line
sentence = sprintf('%s',list{end})

end

