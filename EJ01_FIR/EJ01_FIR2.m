% Ejercicio 01, Diego Emiliano Silva Pastor
clear;
clc;

s = load('ECG_EJ01.txt');       % Vector con datos a filtrar

Wn = 0.48;                  % Número de 0 a 1 - Frecuencia de corte 8% pa rriba lo elimina, pa bajo lo deja pasar

n = 30;             % Número de orden

ftipo = 'low';      % Filtro pasa bajas

%% Filtro basado en ventanas, Frecuenia de corte normalizada
% Regresa coeficientes del filtro en un vector

b = fir1(n,Wn,ftipo);

sf1 = filter(b,1,s);

subplot(3,1,1)      % Gráficas
plot(s)                 % Señal
subplot(3,1,2)
plot(sf1)               % Señal suavizada

n2 = 30;

f2 = [0,0.6,0.6,1];

m2 = [1 1 0 0];

b2 = fir2(n2,f2,m2);        % coeficientes

sf2 = filter(b2,1,s);       % Cambiamos valor de b (los coeficientes)

subplot(3,1,3)
plot(sf2)