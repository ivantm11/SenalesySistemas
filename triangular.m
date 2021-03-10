function [salida] = triangular(t)
    salida = (1 - abs(t)) .* pulso(t/2);
end