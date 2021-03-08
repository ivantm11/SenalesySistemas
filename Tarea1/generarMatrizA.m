function [matriz_a] = generarMatrizA(dimension_matriz)
    matriz_a = zeros(dimension_matriz);
    longitud_matriz = length(matriz_a);
    inicio_numeracion = 0;
    for i = 1:longitud_matriz
        inicio_numeracion = inicio_numeracion + 1;
        for j = inicio_numeracion:longitud_matriz
            matriz_a(i,j) = j; 
        end
    end
end