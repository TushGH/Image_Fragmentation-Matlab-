clc;
clear all;
close all;

I = imread('C:\Users\Tushar\Desktop\lp.png');


 verticalProjection = mean(I, 2);
 horizontalProjection = mean(I, 1);
 
 subplot(3,2,1);
 imshow(I);
  subplot(3,2,2);
 imshow(verticalProjection);
  subplot(3,2,3);
 imshow( horizontalProjection );
  subplot(3,2,4);
  vp=sum(I,1);
  imshow(vp);
   subplot(3,2,5);
hp=sum(I,2);
 imshow(hp);