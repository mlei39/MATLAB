
function didUKnowImANeuroMajor(file, time)

door = fopen(file)
line = fgetl(door)
data = []
xval = []
yval = []

while ischar(line)
    
    while ~isempty(line)
        [took,line] = strtok(line,',')
        
        if strcmp(took,'hp')
            yval = [yval,-75]
        elseif strcmp(took,'dp')
            yval = [yval,-55]
        else 
            xval = [xval,str2num(took)]
        end
    end
    
line = fgetl(door)

end

fclose(door)

mask = xval < time
xval = xval(mask)
yval = yval(mask)

plot(xval,yval,'m*')
axis equal
title('Cockroach Barb Polarizations')
xlabel('Timestamps (ms)')
ylabel('Voltage (mV)')


end