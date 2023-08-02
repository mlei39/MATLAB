
function Angle = eggony(name)

%put the image into a 3_D array
egg = imread(name); 

%Previous wrong solution of rotating the image:

% mask = egg(:,:,1)~=0|egg(:,:,2)~=0|egg(:,:,3)~=0;
% [row,col] = size(mask)
% 
% for c = 1:col   
%    for r = 1:row
%        if mask(r,c)==1
%            r1 = r
%            c1 = c
%            break
%        end
%    end   
%    if mask(r,c)==1
%        break
%    end
% end
% 
% for c = 1:col   
%    r = round(row/3)
%    if mask(r,c)==1
%        r2 = r
%        c2 = c
%        break   
%    end
% end
% 
% angle = atan((c2-c1)/(r1-r2))
% angle = round(angle*180/pi)
% egg = imrotate(uint8(egg),angle);

countL = []

for angle = 1:179
    %rotate the image from 1 to 179 angle seperately
    currentegg = imrotate(egg,angle); 
    %create a mask of the pixels that are not black 
    notblack = currentegg(:,:,1)~=0|currentegg(:,:,2)~=0|currentegg(:,:,3)~=0;
    %find the width of the picture
    width = sum(sum(notblack)>0);
    %put the different widths into a list
    countL = [countL width];  
end

%find the indice of the minimum width, which is the corresponding angle
[~,Angle] = min(countL)
%rotate the image with that angle
egg = imrotate(egg,Angle);

%get a mask for white pixels
white = egg(:,:,1)==255 & egg(:,:,2)==255 & egg(:,:,3)==255;

[row,col] = size(white)
%iterate through all the pixels
for r = 1:row
    for c = 1:col
        %change all the white pixels into the target color
        if white(r,c)==1
           egg(r,c,1)=42;
           egg(r,c,2)=0;
           egg(r,c,3)=69;
        end
    end
end

%rename the file and output the image
newname = [name(1:end-4) '_modified.png']
imwrite(egg,newname)

end




