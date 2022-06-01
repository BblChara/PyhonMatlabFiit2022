function[X,Y] = Cycloidx2(R,r,w,a, b)
if(nargin==0)
    R=17; r=3; w=0.03; a=0; b=2*pi;
end
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
step = pi/120;

nElem = fix((b-a)/(step+w));
Theta = zeros(1, nElem);
Ro = zeros(1, nElem);
X=zeros(1, nElem);
Y=zeros(1, nElem);
for t = 0:round((b-a)/(step+w))
    alpha = t*step;
    alpha2 = t*(step+w);
    x = (R - r)*cos(alpha2)+r*cos((R/r-1)*alpha);
    y = (R - r)*sin(alpha2)-r*sin((R/r-1)*alpha);
    X(t+1)=x; Y(t+1)=y;
    Theta(t+1) = atan2(y,x);
    Ro(t+1) = sqrt(x^2+y^2);
end
%polarplot(0:pi/12:2*pi,ones(1,2*pi/pi*12+1)./r);
%hold on;
polarplot(Theta,Ro);
end
%comet(X,Y);