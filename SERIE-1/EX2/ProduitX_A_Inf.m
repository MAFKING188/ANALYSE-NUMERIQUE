function [Y] = ProduitX_A_Inf(VectX,MatA,N)
%Produit d'un vecteur X et une Matrice A Inf

Y = zeros(N,1);
for i = 1:N
    for j =1:i
        Y(i) = Y(i) + MatA(i,j)*VectX(j);
    end
end
end
