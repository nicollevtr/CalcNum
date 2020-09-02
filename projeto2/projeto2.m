n=20; %grau do polinômio
ZZ=zeros(n,n); %criando uma matriz nula nxn
for i=1:n
    [Z,W]=zerosepesos(i); %Z=zeros, W=pesos são vetores coluna
    ZZ(1:i,i)=Z; % matriz cujas colunas são os vetores Z
    WW(1:i,i)=W; %matriz cujas colunas são os vetores W
end
% separar a matriz ZZ em 4 matrizes menores para efeito de melhor
% apresentação
Za=ZZ(1:20,1:5);
Zb=ZZ(1:20,6:10);
Zc=ZZ(1:20,11:15);
Zd=ZZ(1:20,16:20);
% separar a matriz WW em 4 matrizes menores para efeito de melhor
% apresentação
Wa=WW(1:20,1:5);
Wb=WW(1:20,6:10);
Wc=WW(1:20,11:15);
Wd=WW(1:20,16:20);

Tabela1_Zeros = array2table(Za,'VariableNames',{'Z1','Z2','Z3','Z4','Z5'})
Tabela2_Zeros = array2table(Zb,'VariableNames',{'Z6','Z7','Z8','Z9','Z10'})
Tabela3_Zeros = array2table(Zc,'VariableNames',{'Z11','Z12','Z13','Z14','Z15'})
Tabela4_Zeros = array2table(Zd,'VariableNames',{'Z16','Z17','Z18','Z19','Z20'})
Tabela1_Pesos = array2table(Wa,'VariableNames',{'W1','W2','W3','W4','W5'})
Tabela2_Pesos = array2table(Wb,'VariableNames',{'W6','W7','W8','W9','W10'})
Tabela3_Pesos = array2table(Wc,'VariableNames',{'W11','W12','W13','W14','W15'})
Tabela4_Pesos = array2table(Wd,'VariableNames',{'W16','W17','W18','W19','W20'})

