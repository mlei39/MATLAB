
function out = yuzuTheOrangeHunter(food,prefer)

%take the opposite of prefer
notprefer = ~prefer

%concatenating the inverted version on to prefer
prefer = [prefer,notprefer]

%splite the food into different pieces
food = split(food,' ')

%remove the foods that correspond to where the logical vector is false
food = food(prefer)

%count the number of 'Orange'
orange = sum(strcmp(food,'Orange'))

%count the number of times non 'Orange'
nonorange = sum(~strcmp(food,'Orange'))

%Output the sentence
out = sprintf('Yuzu the Capybara is very picky. Of the foods he wanted from the bath, he found %d orange(s) and %d other food(s).',orange,nonorange)

end
