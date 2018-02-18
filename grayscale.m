function im= grayscale(im)
I= imread('C:\Users\Tushar\Desktop\abc1.jpg');

if size(I,3)==3 % RGB image
    i=rgb2gray(I);
end
    figure(2);
    imshow(i);

end