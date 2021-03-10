function [salida] = pulso(t)
    salida = escalon(t + 1/2) - escalon(t - 1/2);
end