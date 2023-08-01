
function [walletOut, carrots] = ocarinaOfTime(wallet, str);

carrots = 0
walletOut = 0

%check the 1 line
location = str(1,1:13)
num = str2num(str(1,14))
[buy,spent] = help(location,num)
if buy==true&spent<=wallet
    wallet = wallet-spent
    carrots = carrots+num
else 
end

%check the 2 line
location = str(2,1:13)
num = str2num(str(2,14))
[buy,spent] = help(location,num)
if buy==true&spent<=wallet
    wallet = wallet-spent
    carrots = carrots+num
else 
end

%check the 3 line
location = str(3,1:13)
num = str2num(str(3,14))
[buy,spent] = help(location,num)
if buy==true&spent<=wallet
    wallet = wallet-spent
    carrots = carrots+num
else 
end

%check the 4 line
location = str(4,1:13)
num = str2num(str(4,14))
[buy,spent] = help(location,num)
if buy==true&spent<=wallet
    wallet = wallet-spent
    carrots = carrots+num
else 
end

walletOut = wallet

end

%this helper function check if the location is correct 
%and how much we will spend there
function [buy,spent] = help(location,num)

if location == 'Kokiri-Forest'
    buy = true
    spent = num*5.2
    
elseif location == 'Gerudo-Valley'
    buy = true
    spent = num*16.4
    
elseif location == 'Zoras-Domain!'
    buy = true
    spent = num*6.3
        
elseif location == 'DeathMountain'
    buy = true
    spent = num*11.24
            
elseif location == 'Spirit-Temple'
    buy = true
    spent = num*19.35
    
elseif location == 'Secret-Grotto'
    buy = true
    spent = num*3.53
    
else buy = false
    spent = 0
end
    
end