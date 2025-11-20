function [C] = ProduitAB(A,B,N)
    %CALCULER C = A*B 
    C = zeros(N,N);
    for i = 1:N
        for j = 1:N
            C(i,j) = 0;
            for k = 1:N
                C(i,j) = C(i,j) + A(i,k) * B(k,j);
            end
        end
    end
end
