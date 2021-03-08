function [matriz_b] = generarMatrizB(dimension_matriz)
    matriz_b = zeros(dimension_matriz);
    longitud_matriz = length(matriz_b);
    resta_desplazamiento = 1;
    for i = 1:longitud_matriz
        resta_desplazamiento = resta_desplazamiento - 1;
        for j = 1:longitud_matriz
            if j >= i
                matriz_b(i,j) = j + resta_desplazamiento;
            end
        end
    end
end