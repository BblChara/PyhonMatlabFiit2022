function hyperb()
    n = 100;
    v = linspace(-2*pi,2*pi,n);
    u = linspace(0,2*pi,n);
    
    y = cosh(u)'*sin(v);
    x = cosh(u)'*cos(v);
    z = ones(n,1)*sinh(u);
    
    surf(x,y,z)
    axis equal
end