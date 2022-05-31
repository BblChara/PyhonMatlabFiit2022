function res = opp(img,n,ch)

            size1 = size(img);
            img1=img(:,:,ch);
            newimg=uint8(ones(size1(1),size1(2),3));
            l1 = round((size1(1)/n)-0.5);
            l2= round((size1(2)/n)-0.5);
            a=zeros(l1,l2);
            for i=1:l1
                for j=1:l2
                    for k=(i-1)*n+1:i*n-1
                        for g = (j-1)*n+1:j*n-1
                            
                    a(i,j)= a(i,j) + ((img1(k,g)-img1(k,g+1)))^2+((img1(k,g)-img1(k+1,g))^2);
                        end
                
                   end
                
                end
            end
            t1=1;
            t2=1;
            while max(max(a))>0
                
                max1=-5;
                ind= [0 0];
                for i= 1:l1
                    for j=1:l2
                        if a(i,j)>max1
                            max1=a(i,j);
                            ind=[i j];
                            ind1=ind(1);
                            ind2=ind(2);
                        end
                    end
                end
                newimg((t1-1)*n+1:t1*n,(t2-1)*n+1:t2*n,:)=img((ind1-1)*n+1:ind1*n,(ind2-1)*n+1:ind2*n,:);
                a(ind1,ind2)=-1;
                if t2==l2
                    t2=1;
                    t1=t1+1;
                else 
                    t2=t2+1;
                end
            end
            res=newimg;
end
                        
                        
                
               
                    
                        
            
            
           


                