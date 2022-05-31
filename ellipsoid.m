clear; 
n=40;m=40;
a=0;   b=2*pi;
c=0;   d=2*pi;
for i=1:n
    u=a+(b-a)*(i-1)/(n-1);
    for j=1:m
        v=a+(d-c)*(j-1)/(m-1);
        x(i,j)=sin(u)*cos(v);
        y(i,j)=sin(u)*sin(v);
        z(i,j)=cos(u);
    end
end
mesh(x,y,z);