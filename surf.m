% x^2 + y^2 - z^2 =1 


[x,y] = [-2:.2:2];

z = real(sqrt(x.^2+y.^2-1));

surf(z);