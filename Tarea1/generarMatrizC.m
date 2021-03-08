function [matriz_c] = generarMatrizC(dimension_matriz)
    matriz_c = zeros(dimension_matriz);
    longitud_matriz = length(matriz_c);
    resta_desplazamiento = 1;
    suma_desplazamiento = 1;
    for i = 1:longitud_matriz
        resta_desplazamiento = resta_desplazamiento - 1;
        suma_desplazamiento = suma_desplazamiento + 1;
        for j = 1:longitud_matriz
            if j >= i
                matriz_c(i,j) = j + resta_desplazamiento;
            elseif j < i
                matriz_c(i,j) = abs(j - suma_desplazamiento);
            end
        end
    end
end