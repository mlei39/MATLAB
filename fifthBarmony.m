
function strl = fifthBarmony(terms)

list = 1:terms

operator = (-1).^(list-1)

fraction = 1./(list.*2-1)

formula = 4.*operator.*fraction

approximation = round(sum(formula),6)

error = abs(approximation-pi)/pi

percent = round(error*100)

strl = sprintf('I approximated pi to a value of %f using %d terms and a(n) %d%% error.', approximation, terms, percent)

end


