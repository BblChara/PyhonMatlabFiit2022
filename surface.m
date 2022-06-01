function F = EquationsSystem()
%EQUATIONSSYSTEM Summary of this function goes here
%   Detailed explanation goes here
xrange = -5:0.01:5;
F = zeros(length(xrange),1);
% for k = 1:length(xrange)
%    x = xrange(k);
%    F(k) = (y+1)*x+sin(y)*cos(x);
% end
for k = 1:length(xrange)
   x = xrange(k);
   f = @(y) (y+1)*x+sin(y)*cos(x);
   %f = @(y) y*(x+6) - 1;
   F(k) = fzero(f,0);
end
end