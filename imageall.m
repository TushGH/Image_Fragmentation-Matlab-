function im = imageall(im)
I= imread('C:\Users\Tushar\Desktop\abc1.jpg');

figure(1);
imshow(I);

if size(I,3)==3 
    i=rgb2gray(I);
end
    figure(2);
    imshow(i);

I= im2bw(I);
    figure(3);
   imhist(I);

end