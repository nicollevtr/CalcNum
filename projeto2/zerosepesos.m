
function [T, W, conv] = zerosepesos(n)
%  Info: informa ̧c~ao sobre converg^encia do m ́etodo de Newton-Raphson
%         Info = 0: todos os zeros convergiram e
% Info = k: n ́umero de vezes que os zeros n~ao convergiram.
format long
T = zeros(n,1);
W = T;
conv = 0;
Toler = 1e-15;
IterMax = 30;
m = fix((n + 1) / 2);
fracn = 1 - (1 - 1 / n) / (8 * n^2);
pin = pi / (n + 0.5);
% os zeros s~ao sim ́etricos, calcula-se apenas os n~ao negativos
for i = 1:m
    z = fracn * cos((i - 0.25) * pin);   % valor inicial
    %  c ́alculo do i- ́esimo zero do polin^omio de Legendre pelo m ́etodo de Newton-Raphson
    Iter = 0;
    while 1
        %     avalia ̧c~ao do polin^omio de Legendre e sua derivada no ponto z
        Iter = Iter + 1; pz = 1; p1 = 0;
        for j = 0:n-1
            p0 = p1;
            p1 = pz;
            pz = ((2 * j + 1) * z * p1 - j * p0) / (j + 1);
        end
        dpz = (n * (p1 - z * pz)) / (1 - z^2);
        z1 = z;
        z = z1 - pz / dpz;
        if abs(z - z1) <= Toler || Iter == IterMax
            break
        end
    end
    %  verifica ̧c~ao da converg^encia do i- ́esimo zero
    if abs(z - z1) <= Toler
        T(i) = -z; T(n+1-i) = z;  % raizes
        W(i) = 2 / ((1 - z^2) * dpz^2); W(n+1-i) = W(i);  % Pesos
    else
        T(i) = 0;
        T(n+1-i) = 0;
        W(i) = 0;
        W(n+1-i) = 0;
        conv = conv + 1;
    end
end
end
