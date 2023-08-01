
function str = pokeFighter(p1stat, p2stat, p1poke, p2poke)

%Water, add 32 to its HP
if strcmp(p1poke,'Squirtle')|strcmp(p1poke,'Wartortle')|strcmp(p1poke,'Blastoise')
    p1stat(1) = p1stat(1)+32   
%Grass, multiply it's defense by a factor of 1.25
elseif strcmp(p1poke,'Bulbasaur')|strcmp(p1poke,'Ivysaur')|strcmp(p1poke,'Venusaur')
    p1stat(3) = p1stat(3)*1.25   
%Fire, multiply its attack by a factor 2
else p1stat(2) = p1stat(2)*2
end

%Water, add 32 to its HP
if strcmp(p2poke,'Squirtle')|strcmp(p2poke,'Wartortle')|strcmp(p2poke,'Blastoise')
    p2stat(1) = p2stat(1)+32   
%Grass, multiply it's defense by a factor of 1.25
elseif strcmp(p2poke,'Bulbasaur')|strcmp(p2poke,'Ivysaur')|strcmp(p2poke,'Venusaur')
    p2stat(3) = p2stat(3)*1.25   
%Fire, multiply its attack by a factor 2
else p2stat(2) = p2stat(2)*2
end

%1 attacks
p2stat(1) = p2stat(1)-((p1stat(2)*p1stat(4)/50)-p2stat(3))

%If 1 attack brings Player 2 to 0 HP or lower, Player 1 wins
if p2stat(1)<=0
   win = 1
else %2 attacks
    p1stat(1) = p1stat(1)-((p2stat(2)*p2stat(4)/50)-p1stat(3)) 
    %the player with higher hp win
    if p1stat(1)>p2stat(1)
        win = 1
    else win = 2
    end
end

%choose the Pokemon that wins
if win == 1
    winPoke = p1poke
else winPoke = p2poke
end

str = sprintf('Player %d is the winner and their Pokemon %s is victorious!!!',win,winPoke)

end





