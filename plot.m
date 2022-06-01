
sym y;
X = linspace(-100,1 ,100000);
Y = zeros(1,length(X));
for i = 1:length(X)
g=@(y)X(i).*y-2*(pi).^(X(i)+y);
Y(i) = fzero(g,3);
end


plot(X,Y)
grid on 
axis equal
axis([-10 10 -10 10])