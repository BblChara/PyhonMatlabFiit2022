A = rand(4);
[V, D] = eig(A);
self = diag(D);
if A*V - V*D < 10e-10
    disp("OK")
end
% for i= 1:4
%    if(self(i)*V(:,i))- A*V(:,i) <= 10e-10
%         disp("OK")
%     else 
%         disp("NeOk")
%     end
% end

        


