
function leggoMyEggo(first, second, arr)

left = imread(first); %put the image into a 3_D array
right = imread(second); %put the image into a 3_D array
[row,col,thick] = size(left) %find the size of the array

%make a new array with double the columns
add = [left left]; 
%weave the two image together
add(:,1:2:end,:) = left; 
add(:,2:2:end,:) = right;

%make names for the two output images
name2 = [first(1:end-4) second]
name1 = [name2(1:end-4) '_butGray.png']

imwrite(add,name1) %output the image

%greenify the picture and find the blue value
red = arr(:,:,2);
green = arr(:,:,1);
blue = 3*double(add(:,:,1))-double(green)-double(red);

%put the three layers together
final = cat(3,red,green,uint8(blue));

imwrite(final,name2) %output the image

end