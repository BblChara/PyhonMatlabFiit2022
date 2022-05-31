function [Xk k] = newton(f,df,tx)
x0 = tx(1); 
x1 = tx(2); 
F = inline(f); 
DF = inline(df);
e = 1e-5; 
Xkm = (x0+x1)/2; 
Yo = F(x0);
k = 0; 
while abs(Yo) > e 
    Xk = Xkm - F(Xkm)/DF(Xkm);
    Xkm = Xk;
    Yo = F(Xk);
    k = k + 1;
end
end


