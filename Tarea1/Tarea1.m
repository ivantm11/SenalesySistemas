clc; clear; close all;

%% 1. Usando una variable acumuladora y un ciclo for – end de MatLab, implemente funciones que determinen
%  Comparar con el resultado que se obtendría si se realiza en forma vectorizada, usando las instrucciones find() y prod() de MatLab.

% A. La suma de los primeros n números naturales. Comparar con el resultado que se obtendría si se usan funciones propias de MatLab
% Usando ciclo for
fin = 20;
suma_acumulador = 0;
for i = 1:fin
    suma_acumulador = suma_acumulador + i;
end
% Usando funciones de MATLAB
valores_vector = 1:fin;
suma_vector = sum(valores_vector);
% Comparacion
if(suma_acumulador == suma_vector)
    disp('1a. Valores de suma iguales con metodos distintos')
else
    disp('1a. Valores de suma cambian al usar metodos distintos')
end
suma_acumulador
suma_vector

% B. El producto de los elementos no nulos almacenados en el vector v, por ejemplo, v=[2 4 9 3 6 0 3 2 1 0 6 7 5]
v = [2 4 9 3 6 0 3 2 1 0 6 7 5];
long_vector = length(v);
% Usando ciclo for
producto_acumulador = 1;
for i = 1:long_vector
    numero = v(i);
    if ~isequal(numero, false)
        producto_acumulador = producto_acumulador * numero;
    end
end
% Usando funciones MATLAB
producto_vector = prod(v);
% Comparacion
if(producto_acumulador == producto_vector)
    disp('1b. Valores del producto iguales con metodos distintos')
else
    disp('1b. Valores del producto cambian al usar metodos distintos')
    disp('    Al consultar la documentacion de prod(), se descubre que es')
    disp('    usado en matrices, actualmente estamos usando un vector.')
end
producto_acumulador
producto_vector

%% 2. En el ambiente de MatLab, implementar 3 funciones que generen cada uno de los siguientes tres tipos de matrices cuadradas...
%  Las funciones deben tener como parámetro de salida la matriz generada y
%  como parámetro de entrada la dimensión de la matriz.
dimension_matriz = 7;
disp('2. Matrices generadas con funciones')
matriz_a = generarMatrizA(dimension_matriz)
matriz_b = generarMatrizB(dimension_matriz)
matriz_c = generarMatrizC(dimension_matriz)

%% 3. En el ambiente de MatLab, escribir una función que permita modificar los valores de algunos de los elementos de una matriz,
%  dando la posición en formato (renglón, columna).
disp('3. Matriz original')
MB = [40 41 42 43 44; 50 51 52 53 54; 60 61 62 63 64]
disp('   Matriz modificada')
MB = asignar(MB, [1 1 3], [1 5 4], [800 440 630])

%% 4. En el ambiente de MatLab escribir un archivo tipo script que genere las gráficas mostradas
% Definimos funciones y variables
alpha = 0.5;
f1 = @(t) exp(-alpha * t);
f2 = @(t) 5 * sin(pi * t);
g  = @(t) f1(t) .* f2(t);
dt = 1e-3;
tiempo = 0:dt:10;
linea_media = 2;
linea_ancha = 3;
% Graficacion y personalización
figure(1);
% Función 1
subplot(2,2,1);
plot(tiempo, f1(tiempo), 'r', 'LineWidth', linea_media)
title('f_{1}(t) = e^{-\alpha t}, donde \alpha = 0.5')
xlabel('t[s]')
grid on
% Función 2
subplot(2,2,2);
plot(tiempo, f2(tiempo), 'r', 'LineWidth', linea_media)
title('f_{2}(t) = 5 sin(\pi t)')
xlabel('t[s]')
grid on
% Función producto
subplot(2,2,[3,4]);
plot(tiempo, g(tiempo), 'b', 'LineWidth', linea_ancha)
title('(f_{1} \bullet f_{2}) (t) = 5 e^{-\alpha t} sin(\pi t)')
xlabel('t[s]')
grid on
disp('4. Gráficas en ventana Figure 1')

