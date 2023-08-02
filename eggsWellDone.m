
function eggsWellDone(name)

egg = imread(name); %put the image into a 3_D array

%make masks for white and gold pixels
white = egg(:,:,1)==255 & egg(:,:,2)==255 & egg(:,:,3)==255;
gold = ~white;

left = [gold(:,2:end) gold(:,1)]; %move the egg to the left by 1 pixel
right = [gold(:,end) gold(:,1:end-1)]; %move the egg to the right by 1 pixel
up = [gold(2:end,:); gold(1,:)]; %move the egg up by 1 pixel
down = [gold(end,:); gold(1:end-1,:)]; %move the egg down by 1 pixel

%make a mask for the pixels that will be converted into the edge
edge = (left&white)|(right&white)|(up&white)|(down&white);

[row,col] = size(edge) %find the size of the mask

%iterate through the every pixel
for r = 1:row
    for c = 1:col
        %change the color of pixels on the edge into black
        if edge(r,c)==1
           egg(r,c,1)=0;
           egg(r,c,2)=0;
           egg(r,c,3)=0;
        end
    end
end

%rename the file and output the image
newname = [name(1:end-4) '_crusty.png']
imwrite(egg,newname)

end