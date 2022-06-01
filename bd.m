t = -pi:0.01:pi;

f = sin(t);
g = cos(t);
h = -exp(2*sin(t));
subplot(2,2,1);
plot (f);
hold on;
plot(g);
hold off;
subplot(2,2,2);
plot (g);

subplot (2,2,3);
plot (h);

