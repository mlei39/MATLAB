
function [short, avg] = flashPass(rides)

%define the number of rides
number = sum(rides==' ')+1

% define the variable that counts the total waiting time
total = 0

% define the string that collects all the waiting times
time = []

% define the the rest of rides
rest = rides

% use strtok in while to get the name of each ride
while(number>0)
    [take,rest] = strtok(rest,' ')
    %adding the time of each ride
    total = total+length(take)
    %making a list for the time of each ride
    time = [time length(take)]
    
    number = number-1
end

%find the average time
avg = round(total/(sum(rides==' ')+1),2)

%find the smallest number in the list
short = time
    %have a loop that find the smallest number in the list
    for(a = 1:sum(rides==' '))
        if short(1)>short(2)
        short(1)=[]
        elseif short(1)<=short(2)
        short(2)=[]
        end
    end

%find the name of the shortest ride
Ind = 1:sum(rides==' ')+1
count = Ind(time == short)
name = rides(1:short)
rest = rides
    while count>1
    [take,rides] = strtok(rides,' ')
    count = count-1
    name = rides(2:(short+1))
    end

%print the description
short = sprintf('Hurry! We must get to the %s ride STAT! It only has a %d-minute wait.',name,short)
    
end










