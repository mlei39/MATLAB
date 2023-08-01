
function str = bonesButNotTheTVShow(name, desc)

%input the file data into a variable
cell = readcell(name)

%find the colomn of 'Costume Name','Size','Theme','Inventory'
col1 = contains(cell(1,:),'Costume Name')
col2 = contains(cell(1,:),'Size')
col3 = contains(cell(1,:),'Theme')
col4 = contains(cell(1,:),'Inventory')
col1 = find(col1)
col2 = find(col2)
col3 = find(col3)
col4 = find(col4)

%seperate the two requirement in the description
[size,rest] = strtok(desc,',')
theme = rest(2:end)

%make three masks for costumes that satisfy the requirement 1,2,3
mask1 = strcmp(cell(2:end,col2),size)
mask2 = strcmp(cell(2:end,col3),theme)
inventory = cell2mat(cell(2:end,col4))
mask3 = inventory>0

%combine all the mask
mask = mask1&mask2&mask3

%find the row of the costumes that satisfy the requirements
ind = 2:length(mask)+1
row = ind(mask)

%find the name of the costumes
name = cell2mat(cell(row,col1))

%output the sentence
if isempty(name)
    str = sprintf('I couldn''t find a costume, to the next store I go!')
else
    str = sprintf('I bought %s and am super excited for spooky season!',name)    
end

end





