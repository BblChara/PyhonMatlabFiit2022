phi = 0:pi/100:2*pi;
thet = 0:pi/100:2*pi;
for i= 1:100
    u = phi(i);
    for j=1:100
        v = thet(j);
        x(i,j) = sin(u)^2+cos(v)^2;
        y(i,j) = sin(u)^2+sin(v)^2;
        z(i,j) = cos(v)^2;
    end
end
mesh(x,y,z);
    
    