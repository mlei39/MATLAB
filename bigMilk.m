
function sentence = bigMilk(milkSecrets, x, y)

cell = readcell(milkSecrets)
[row,col] = size(cell)

%make a frame of zeros around the original cell
Cell = num2cell(zeros(row+2,col+2))
Cell(2:end-1,2:end-1) = cell

%update the new coordinate
x = x+1
y = y+1
sentence = [Cell{x,y}]

while ~strcmp(Cell(x,y),'.')

up = Cell{x-1,y}
down = Cell{x+1,y}
left = Cell{x,y-1}
right = Cell{x,y+1}

    if strcmp(class(up),'char')
    x = x-1
    sentence = [sentence Cell{x,y}]
    Cell{x+1,y} = 0
    
 
    elseif strcmp(class(down),'char')
    x = x+1
    sentence = [sentence Cell{x,y}]
    Cell{x-1,y} = 0

    
    elseif strcmp(class(left),'char')
    y = y-1
    sentence = [sentence Cell{x,y}]
    Cell{x,y+1} = 0
    
    elseif strcmp(class(right),'char')
    y = y+1
    sentence = [sentence Cell{x,y}]
    Cell{x,y-1} = 0

    end


end


end