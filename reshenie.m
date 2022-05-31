function reshenie
clear, clc
diap = [0, 3]; 
fun = 'x^3 -2*x - 5';
dfun = char(diff(sym(fun))) 
[x0 n] = newton(fun,dfun,diap);
fprintf('Корень уравнения х = %f, \n', x0);
ezplot(fun,diap), grid on
hold on
f = inline(fun);
plot(x0, f(x0),'+r')
end