
function result = mascotDarts(str)

% define the variable that counts their points and rounds
player1 = 0
player2 = 0
round = sum(str==',')+1

while player1<200&player2<200&round>0
    
%take the first word in the string
[take,str] = strtok(str,',')
    %If the value is 'bullseye', then add 50 points 
    if strcmp(take,'bullseye')
        player1 = player1+50
    %If the value is 'out', add nothing
    elseif strcmp(take,'out')
        player1 = player1
    %Else, add the number of the word
    else player1 = player1+str2num(take)
    end 

if player1>=200 
    break
end

%take the first word in the string
[take,str] = strtok(str,',')
    %If the value is 'bullseye', then add 50 points 
    if strcmp(take,'bullseye')
        player2 = player2+50
    %If the value is 'out', add nothing
    elseif strcmp(take,'out')
        player2 = player2
    %Else, add the number of the word
    else player2 = player2+str2num(take)
    end
    
round = round - 2  
end

if player1>=200
    result = sprintf('Buzz absolutely destroyed Uga with a score of %d points!',player1)
elseif player2>=200
    result = sprintf('That was rough! Buzz couldn''t keep up with Uga''s %d points.',player2)
elseif player1>player2
    result = sprintf('It was a close game, but Buzz came out on top with %d points!',player1)
elseif player1<player2
    result = sprintf('It was a close game, but Buzz couldn''t keep up with his %d points.',player2)
else
    result = sprintf('They tied with %d points.',player1)
    
end

end
