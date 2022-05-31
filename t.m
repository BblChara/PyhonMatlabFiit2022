
res(2,2) = "";
res(3,2) = "";
for i=1:size(A,1)
    if A(i,2) == "Руководитель"
        res(2,2) = res(2,2) +  A(i,1)+";";
    else
        res(3,2) = res(3,2) +  A(i,1)+";";
    end
end
a = xlswrite('1.xls',res);


