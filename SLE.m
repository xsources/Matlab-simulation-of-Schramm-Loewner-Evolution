function [y,x]=SLE(n,chi)
%---------------------------------------------------
% Schramm Loewner Evolution (Matlab simulation of stochastic planar curves)
% author : Said Boutiche
% email : myelearningz@gmail.com
% date : 2017 Sept. 26
% usage:
% [y,x]=SLE(n,chi)
% input:
% n = number of points (e.g. n=10000)
% chi parameter of driving function (often: 0<chi<8 )
% ouput:
% [x,y] coordinates of stochastic planar curve with corresponding plot.
% example: simulation of 10000 points Loop Erased Random 
% Walk (LERW) with chi=2:
% [y,x]=SLE(10000,2).
% additional files:
%          fz1.m   (first map)
%          fz2.m   (second map)
%---------------------------------------------------

  f1=0;                 %initialization of the curve
 for h=1:n
   p=rand(1);
   if p>0.5
 f1=[0;fz1(f1,chi)];    % recursive call of the first map if p<0.5
   else
 f1=[0;fz2(f1,chi)];    % else recursive call of the second map 
   end
 end  
 x=real(f1);            % x is the real part of the curve
 y=imag(f1);            % y is the imaginary part of the curve

 figure(1),
 plot(x,y,'r-','LineWidth',1.0);
title(['planar curve for: [x,y]= SLE(N,\chi)== SLE(' num2str(n) ',' num2str(chi) ')']);
 axis equal
 grid on

end
