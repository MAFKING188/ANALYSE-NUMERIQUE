function [L] = Cholesky(A,N)
    %CALCULER L
    L =zeros(N,N);
    
    L(1,1) = sqrt(A(1,1));
    
    for i=2:N
      L(i,1) = A(i,1)/L(1,1);
    end
    
    %j'em colonne
    
    for k=2:N

        somme = 0;
        for i = 1:k-1
            somme = somme + L(k,i).^2;
        end
        L(k,k) = sqrt(A(k,k)-somme);

        
        for j = k+1:N
            somme = 0;
            for i = 1:j-1
                somme = somme + L(j,i)*L(k,i);
            end
            L(j,k) = ((A(j,k) - somme))/L(k,k);
        end
     end
    
    %N'em colonne
    L(N,N) = sqrt(A(N,N)-sum(L(N,1:N-1).^2));
end