
function count = salmonegga(name, vec)

img = imread(name); %put the image into a 3_D array

red = vec(1)
green = vec(2)
blue = vec(3)

%make a mask for the target color
mask = img(:,:,1)==red & img(:,:,2)==green & img(:,:,3)==blue;
total = sum(sum(mask))
[row,col] = size(mask)

%iterate through pixels and locate the pixel on the very left of a circle
for c = 1:col
    
   for r = 1:row
       if mask(r,c)==1
           firstr = r
           firstc = c
           break
       end
   end
   
   if mask(r,c)==1
       break
   end
   
end

movec = firstc+1

%locate the pixel on the right of the diameter
while mask(firstr,movec)==1
    movec = movec+1;  
end

%calculate the radius and then the area
radius = (movec-firstc)/2
area = pi*radius^2

%calculate the number of circles
count = round(total/area)

end


