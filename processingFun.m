function res = processingFun(img1,img2,n)
    
% Получить растровое изображение в формате RGB24 на основе двух других по 
% следующемуправилу: первое из двух исходных изображений помещается над вторым,
% при этом нижний крайпервого изображения перекрывает верхний край второго 
% изображения на количество точек,указываемое пользователем. При этом оба 
% изображения выровнены по левому краю. Значениеинтенсивности каждой из 
% цветовых компонент точек результирующего изображения в областиперекрытия 
% определяется как побитовое ИСКЛЮЧАЮЩЕЕ ИЛИ для значений
% интенсивностисоответствующих точек первого и второго изображений. 
% Ширина результирующего изображениявыбирается как минимальное значение 
% ширины двух исходных изображений. При этом точки вправой части изображения 
% с большей шириной не учитываются при обработке.

        s1 = size(img1);
        s2 = size(img2);
        
        w = min(s1(2),s2(2));
        
        
       
        newimg = uint8(ones(s1(1)+s2(1) - 2*n, w, 3));
        
       szimg = size(newimg);
       
            for i = 1: s1(1)-n
                for j = 1 : w
                    for ch = 1:3
                        newimg(i,j, ch) = img1(i, j, ch);
                    end
                end
            end
            
             for i = s1(1): szimg(1) 
            
                    for j = 1 : w
                        newimg(i,j, :) = img2(i - s1(1) + n , j, :);
                    end
             end
             
            
            for i = s1(1)-n:s1(1)
                for j = 1:w
                    newimg(i, j, :) = bitxor(img1(i,j,:),img2(i-s1(1)+n+1,j,:));
                end
            end
            
       
          
                        
                  
        res = newimg;
            
end