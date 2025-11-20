%% PRODUIT Y = A * X
X =[1 2 3]
A = [1 2 3;4 5 6; 7 8 9]
N = 3
y = zeros(N,1);
for i = 1:N
    for j =1:N
        y(i) = y(i) + A(i,j)*X(j);
    end
end
disp(Y)