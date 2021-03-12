function [salida] = rect(t)
    salida = escalon(t) - escalon(t - 1);
    %salida = pulso(t - 1/2);
end