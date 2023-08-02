
function adobeEggotoshop(background, object, color)

ground = imread(background); %put the image into a 3_D array
object = imread(object); %put the image into a 3_D array

%relate the color names to its corresponding rgb values
if strcmp(color,'red') 
    vec = [255 0 0]
elseif strcmp(color,'green')
    vec = [0 255 0]
elseif strcmp(color,'blue')
    vec = [0 0 255]
elseif strcmp(color,'magenta')
    vec = [255 0 255]       
elseif strcmp(color,'cyan')
    vec = [0 255 255]
elseif strcmp(color,'yellow')
    vec = [255 255 0]    
elseif strcmp(color,'white')
    vec = [255 255 255]
elseif strcmp(color,'black')
    vec = [0 0 0]    
end

%make a mask for the pixels of the target color 
mask1 = ground(:,:,1)<=(vec(1)+10)&ground(:,:,1)>=(vec(1)-10);
mask2 = ground(:,:,2)<=(vec(2)+10)&ground(:,:,2)>=(vec(2)-10);
mask3 = ground(:,:,3)<=(vec(3)+10)&ground(:,:,3)>=(vec(3)-10);
mask = mask1&mask2&mask3;

%find the sizes of the two images
[row,col,thick] = size(ground)
[r,c,t] = size(object)
%resize the second image
object = imresize(object,row/r);

%convert the mask into 3-D
mask = cat(3,mask,mask,mask);
%do green screening
ground(mask) = object(mask);

%rename the file and output the image
newname = [background(1:end-4) '_egged.png']
imwrite(ground,newname)

end




