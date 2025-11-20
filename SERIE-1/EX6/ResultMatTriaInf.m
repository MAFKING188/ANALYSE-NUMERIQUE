function [X] = ResultMatTriaInf(A,b,N)
    %CALCULER A*X = b avec A une matrice triangulaire inferieure
    X = zeros(N,1);
    X(1) = b(1)/A(1,1);
    for i = 2:N
        sum = 0;
        for j = 1:i-1
            sum = sum + A(i,j) * X(j);
        end
        X(i) = (b(i) - sum) / A(i,i);
    end

    %disp("La resulter par calcule est: ");
    %disp(X);
end
