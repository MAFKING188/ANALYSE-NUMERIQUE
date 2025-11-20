function [L,U] = LU_Decomposition(A,N)

%for j = 1:N
 %   somme = 0;
  %  for k =j: N
   %     somme = 0;
    %    for s =1:j-1
     %       somme = somme + L(j,s)*U(s,k);
      %  end
%
 %       U(j,k) = A(j,k) - somme;
  %  end

   % for i = j+1:N
    %    somme = 0;
     %   for s = 1:j-1
      %      somme = somme + L(i,s)*U(s,j);
       % end
   % end
%end


for i =1:N
    somme = 0;
    L(i,i) = 1;
    for j = 1:N
        for k = 1:i-1
            somme = somme + L(i,k)*U(k,j);
        end
        U(i,j) = (A(i,j) - somme);
    end
    
    % Matrice L
    for j = i+1:N
        somme = 0;
        for k = 1:i-1
            somme = somme + L(j,k)*U(k,i);
        end
        L(j,i) = (1/U(i,i))*(A(j,i) -somme);
    end
end
