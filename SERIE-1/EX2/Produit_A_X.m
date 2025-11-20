function [Y] = ProduitA_X(VectX,MAtA,N)
Y = zeros(N,1);
for i = 1:N
    for j =1:N
        Y(i) = Y(i) + MAtA(i,j)*VectX(j);
    end
end
disp(Y)

end
%% 
X =[1 2 3];
A = [1 2 3;4 5 6; 7 8 9];
N = 3;
ProduitA_X(X,A,N)

