function res = robot(n,img)

for i = 1 : size(:,1)
    for j = 1 : size(1,:)
        if img(i,j) > 130
            img(i,j) = 255;
        else 
            img(i,j) = 0;
        end
    end
end
[x,y] = ginput(n);

    

