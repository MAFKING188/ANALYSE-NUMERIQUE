function [A,b] = Affectation_Ab(N)
    %AFFECTATION DE A ET b
    if N >= 3
        b = zeros(N,1);
        A = zeros(N,N);
        
        for i = 1:N
            b(i) = 1 / (2+i);
            for j = 1:N
                A(i,j) = 1 / (i+j^2);
            end
        end
     else
        disp("Erreur N doit être >= 3");
        A = [];
        b = [];
   end

end