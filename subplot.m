[x,y] = meshgrid(-2:.2:2);
r=2;
z=sqrt(r^2-x.^2-y.^2);
z(~isreal(z))=NaN;
z = real(z);
z(10,10)=NaN;
surf(x,y,z);

phi=(0:pi/12:2*pi)';
theta=-pi/2:pi/12:pi/2;

x = r*cos(phi)*cos(theta);
y = r*sin(phi)*cos(theta);
z = r*ones(size(phi))*sin(theta);
surf(x,y,z);

subplot(2,3,1);
surf(x,y,z);
subplot(2,3,2);
surfc(x,y,z);
subplot(2,3,3)
mesh(x,y,z);
subplot(2,3,4);
meshc(x,y,z);
subplot(2,3,5);
meshz(x,y,z);
subplot(2,3,6);
waterfall(x,y,z);
