function [Y] = ProduitX_A_Sup(VectX,MatA,N)
%Produit d'un vecteur X et une Matrice A Sup

Y = zeros(N,1);
for i = 1:N
    for j = i:N
        Y(i) = Y(i) + MatA(i,j)*VectX(j);
    end
end
end
