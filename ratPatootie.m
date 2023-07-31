
function [sentence, quant] = ratPatootie(ingr, recipe, pantry, num)

%remove all characters and lowercase all the ingredients
ingr = lower(ingr((ingr>=65&ingr<=90)|(ingr>=97&ingr<=122)))

%get list1, the first letter of all the ingredients
list1 = ingr(1:num:end)

%sort the list1 in alphabetical order
[list1,inds] = sort(list1)

%use the inds1 to sort the recipe
recipe = recipe(inds)

%use recipe minus pantry, forming list2
list2 = recipe - pantry

%let the positive numbers in list2 to be the quant
quant = list2 (list2>0)
quant = [quant(2),quant(1)]

%find the location of the two ingredients
loca = list2>0

%find the original location of the two ingredients
orig = inds(loca)
orig1 = orig(1)
orig2 = orig(2)

%output the two ingredients
name1 = ingr(((orig1-1)*num+1):(orig1*num))
name2 = ingr(((orig2-1)*num+1):(orig2*num))

%print the statement
sentence = sprintf('I need to get more %s and %s!!!',name2,name1)

end
