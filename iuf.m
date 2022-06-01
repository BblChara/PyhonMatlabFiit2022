function iuf(k)
    x1 = k:0.01:real((2*k+1)/2);
    
    x2 = real((2*k+1)/2):0.01:k+1;
    plot(x1,cos(x1),x2,sin(x2))
    grid on
    axis equal
end