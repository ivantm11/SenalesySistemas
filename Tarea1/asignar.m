function nA = asignar(A, ind_reng, ind_col, n_val)
    % Esta función permite asignar nuevos valores de la matriz A
    % ind_reng, vector que contiene los índices de renglón de los nuevos
    % valores
    % ind_col, vector que contiene los índices de columna de los nuevos
    % valores
    % n_val, vector que contiene los nuevos valores
    
    if nargin ~= 4
        error('Los parámetros de entrada no son suficientes');
    end
    
    mustBeInteger(ind_reng)
    
    if any(ind_reng < 1)
        error('No son correctos los índices renglón');
    end
    
    longitud_col = length(ind_col);
    longitud_reng = length(ind_reng);
    longitud_val = length(n_val);
    
    if ~(longitud_col == longitud_reng) || ~(longitud_col == longitud_val) || ~(longitud_reng == longitud_val)
        error('Las entradas de columnas, renglones e indices deben ser las mismas')
    end
    
    nA = A;
    
    for i = 1:longitud_reng
        x = ind_reng(i);
        y = ind_col(i);
        v = n_val(i);
        
        nA(x, y) = v;
    end
end