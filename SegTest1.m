clc;
close all;
clear all;

I= imread('C:\Users\Tushar\Desktop\abc1.jpg');

if size(I,3)==3 % RGB image
    i=rgb2gray(I);
end

 I2= Thresholding(I);
 cc = bwconncomp(I2, 8);
 n= cc.NumObjects;
 
 Area= zeros(n,1);
 Perimeter= zeros(n, 1);
 MajorAxis= zeros(n, 1);
 MinorAxis= zeros(n, 1);
% for i= 1:n
   k=  regionprops(cc , 'Area', 'Perimeter','MajorAxisLength','MinorAxisLength');
 for i= 1:n
     
 abc = false(size(I2));
 abc(cc.PixelIdxList{i})= true;
 figure(i);
 imshow(abc);
     
     
 Area(i) = k(i).Area;
 Perimeter(i) = k(i).Perimeter;
 MajorAxis(i)= k(i).MajorAxisLength;
 MinorAxis(i)= k(i).MinorAxisLength; 
 end
 data(1,1) = mean(Area);
 data(2,1) = mean(Perimeter);
 data(3,1) = mean(MajorAxis);
 data(4,1) = mean(MinorAxis);
 
