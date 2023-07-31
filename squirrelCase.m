
function out = squirrelCase(int)

%lowercase the sentence
out = lower(int)

%delete special characters
out(~(out==32|(out>=65&out<=90)|(out>=97&out<=122))) = ''

%Capitalize S, A, N, D, and Y.
mask = out=='s'|out=='a'|out=='n'|out=='d'|out=='y'
out(mask) = upper(out(mask))

%Count num, the total number of times S, A, N, D, or Y appear.
mask = out=='S'|out=='A'|out=='N'|out=='D'|out=='Y'
num = sum(mask)

%Capitalize the letter that correspond to num.
letter = char(num+96)
out(out==letter) = upper(out(out==letter))

end