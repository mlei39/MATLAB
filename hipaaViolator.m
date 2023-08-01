
function sentence = hipaaViolator(filename)

%input the file data into a variable
cell = readcell(filename)

%find the colomn of 'Retired','Savings','Salary','Name'
col1 = contains(cell(1,:),'Retired')
col2 = contains(cell(1,:),'Savings')
col3 = contains(cell(1,:),'Salary')
col4 = contains(cell(1,:),'Name')
ind = 1:length(cell(1,:))
col1 = ind(col1)
col2 = ind(col2)
col3 = ind(col3)
col4 = ind(col4)

row = 2
delete = []

while row<=length(cell(:,1))
    switch cell{row,col1}
        case{'true'} 
            %check the saving for retired patients
            if cell{row,col2}<75
                delete = [delete row]
            end
        otherwise
            %check the salary for non-retired patients
            if cell{row,col3}<100
                delete = [delete row]
            end
    end
row = row+1    
end

%delete the rows of patients who didn't meet the requirements
cell(delete,:) = []

%create a column 'Profit' that contains (salary + saving) to the right end
cell(1,end+1) = {'Profit'}
cell(2:end,end) = num2cell(cell2mat(cell(2:end,col2))+cell2mat(cell(2:end,col3)))

%rearrange cell so that it is sorted in descending order of the "profit"
profit = cell2mat(cell(2:end,end))
[~,ind] = sort(profit,'d')
cell(2:end,:) = cell(ind+1,:)

name = cell{2,col4}
profit = cell{2,end}

%Output a string containing the name with the highest profit and the profit value:
sentence = sprintf('Our VIP client, %s, will be paying $%d for their treatment!',name,profit)

%output the updated file
[filename,rest] = strtok(filename,'.')
new = [filename '_updated.xlsx']
writecell(cell,new)

end



