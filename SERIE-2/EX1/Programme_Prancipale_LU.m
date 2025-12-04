function [] = Programme_Prancipale_LU()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

N = input("Donnez la valuer de N");

A = zeros(N,N);
b = zeros(N,1);
L = zeros(N,N);
U = zeros(N,N);

for i = 1:N
    for j = 1:N
         A(i,j) = input(sprintf("Donnez la valeur de A%d%d: ",i,j));
    end
end

for j = 1:N
         b(j) = input(sprintf("Donnez la valeur de b%d: ",j));
end

[L,U] = LU_Decomposition(A,N);

disp("La matrice U est ");
disp(U);

disp("La matrice L est ");
disp(L);

[Y] = ResultMatTriaInf(L,b,N);
[X] = ResultMatTriaSup(U,Y,N);
disp("Y est ");
disp(Y);
disp("LA solution est ");
disp(X);

end