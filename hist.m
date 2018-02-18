function im= hist(im)
I= imread('C:\Users\Tushar\Desktop\abc1.jpg');

I= im2bw(I);
    figure(2);
    imhist(I);

end