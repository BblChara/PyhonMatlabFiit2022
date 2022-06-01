T = zeros(49,2);
for l = 1 : 10
    for k = 2 : 50
        A = rand(15*k);
        tic;
        for r = 1:size(A,2)
            for c = 1:size(A,2)
                A(r,c) = A(r,c)*2;
            end
        end
        T(k-1,1) = T(k-1,1) + toc;
        tic;
        for c = 1:size(A,1)
            for r = 1 : size (A,1)
            A(r,c) = A (r,c)*2;
            end
        end
        T(k-1,2) = T(k-1,2) + toc;
    end
end

        
    