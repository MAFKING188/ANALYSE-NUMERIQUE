
function [A,B] = AffectationAB(N)
    %AFFECTATION DE A ET B POUR N >= 3
    A = zeros(N,N);
    B = zeros(N,N);
    
    if N >= 3
        for i = 1:N
           for j = 1:N
               B(i,j) = input(sprintf("Donnez la valeur de B%d%d: ",i,j));
           end
        end
        
        for i = 1:N
           for j = 1:N
               A(i,j) = input(sprintf("Donnez la valeur de A%d%d: ",i,j));
           end
        end
    else
        disp("Erreur N doit etre >= 3");
    end
end
