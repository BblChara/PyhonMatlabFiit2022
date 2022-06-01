function res = tuy(n,o)

A= 1:1:n;
B = ones(n,1);
C = B*A;
D=zeros(n);
for i= 2:n
    for j= n:-1:n-i+2
        D(i,j)=D(i,j)+i-1-(n-j);
    end
end
F = C - D;
%    F      1     2     3     4     5
%           1     2     3     4     4
%           1     2     3     3     3
%           1     2     2     2     2
%           1     1     1     1     1

s = 0;
i = o;
j = 1;
while i <= n
    while j <= n-o+1
        s = s + F(i,j);
        i = i+1;
        j = j+1;
    end
end
res = s;
end