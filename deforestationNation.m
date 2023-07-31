
% an array of chars that represents a forest (input 1)
% a single letter (input 2)
% an array of chars of sorted and deforested forest
% string telling how many targets were before and after deforestation

function [new, sentence] = deforestationNation(forest, target)

%sorting the first column of the forest alphabetically

[forest(:,1),inds] = sort(forest(:,1))

%use the former indices to sort the entire array

forest = forest(inds,:)

%sorting the first column of the forest alphabetically

[forest(:,1),inds] = sort(forest(:,1))

%find the times that 'target' appears before the deforestation

before = sum(sum(forest==target))

%find the number of rows in the array

[rows,cols] = size(forest)

%replace the trees on the major diagonal of the array with the char 'x'

lim = min([cols rows])
final = 1+(lim-1)*(rows+1)
forest(1:rows+1:final) = 'x'

%find the times that 'target' appears after the deforestation

after = sum(sum(forest==target))

%output1
new = forest

%output2
sentence = sprintf('Originally there were %d %s trees but after the path was paved there are %d %s trees remaining',before,target,after,target)


end



