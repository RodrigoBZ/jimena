clear all
close all
clc

% Algoritmo de Thomas (TDMA)

% Solucion MATLAB
N = 100;
A = zeros(N-
);
A(1,1) = -2;

for k = 1:N-1
    A(k+1,k) = 1;
    A(k+1,k+1) = -2;
    A(k,k+1) = 1;
end

A
z = rand(N,1);
y = inv(A)*z;


% Solucion con Thomas
A_D = zeros(N,3);
A_D(2:N,1) = 1;
A_D(:,2) = -2;
A_D(1:N-1,3) = 1;
A_D

y_T = TDMA(N,A_D,z);