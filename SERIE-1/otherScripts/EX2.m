%% AFECTATION DE X ET Y
N = input("Donner N (N >=3): ");
if N >= 3
    %% Vectuer X
for i = 1:N
    X(i) = 1/(1+i);
    
end
%%  MATRICE A

for i = 1:N
   for j = 1:N
       A(i,j) = 2/(i+j^2);
       
   end  
end

    
end
disp('VECTEUR X = ');
disp(X);
disp('MATRICE A= ');
disp(A)