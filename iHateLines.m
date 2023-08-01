
function out = iHateLines(times, extra)

%make a mask for non-broken rides (based on the two requirement)
mask = times==extra|sqrt(times)-round(sqrt(times))==0

%delete all the broken rides
times = times(mask)

%find the number of non-borken rides
num = length(times)

%find the position of the four values with sum 1371
for a = 1:num
    for b = (a+1):num
        for c = (b+1):num
            for d = (c+1):num
                sum = times(a)+times(b)+times(c)+times(d)
            if sum==1371
            break
            end
            end
        if sum==1371
        break
        end      
        end
    if sum==1371
    break
    end 
    end
if sum==1371
break
end    
end

%put the four value in a list
times = [times(a) times(b) times(c) times(d)]

%output the four number in acending order
out = sort(times)

end



