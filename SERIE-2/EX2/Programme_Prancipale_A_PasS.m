function [] = Programme_Prancipale_A_PasS()
% Resoudre A 
%   Detailed explanation goes here
N = input("Donnez la valuer de N");

A = zeros(N,N);
b = zeros(N,1);

for i = 1:N
    for j = 1:N
         A(i,j) = input(sprintf("Donnez la valeur de A%d%d: ",i,j));
    end
end

for j = 1:N
         b(j) = input(sprintf("Donnez la valeur de b%d: ",j));
end
%A == A';
if issymmetric(A)                                                                              
    disp("A est symetrique");
else
    disp("A n'est pas sysmetrique");
end

%disp(A);
C = A'*A;
B = A'*b;

%C == C';
if issymmetric(C)                                                                              
    disp("C est symetrique");
else
    disp("C n'est pas sysmetrique");
end
L = Cholesky(C,N);
disp(L);

Y = ResultMatTriaInf(L,B,N);

Tl = L';

X = ResultMatTriaSup(Tl,Y,N);

% VERIFICATION
V = norm(C*X - B);
disp("La norme de C*X - B est: ")
disp(V);

end