im=imread('C:\Users\Tushar\Desktop\aa.png');

figure(1)
imshow(~im);
if size(i,3)==3 % RGB image
    i=rgb2gray(i);
end

    i=im2bw(i);

figure(2)
imhist(im)