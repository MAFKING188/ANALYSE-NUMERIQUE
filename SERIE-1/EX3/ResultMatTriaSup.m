
function [X] = ResultMatTriaSup(A,b,N)
    %CALCULER A*X = b avec A une matrice triangulaire superieure
    X = zeros(N,1);
    for i = N:-1:1
        sum = 0;
        for j = i:N
            sum = sum + A(i,j) * X(j);
        end
        X(i) = (b(i) - sum) / A(i,i);
    end
   % disp("La resulter par calcule est: ");
    %disp(X);
end
