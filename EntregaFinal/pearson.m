function r = pearson( y, y_reg)
    % Dados el conjunto de datos esperados y 
    % y los datos generados por la curva generada, obtenemos el coeficiente
    % de correlación de Pearson.
    p= sum(y) / length(y);
    %disp(p)
    st = sum(times((y-p),(y-p))); % times = multiplicacion de matrices elementwise. 
    %disp(st)
    sr = sum(times((y-y_reg),(y-y_reg)));
    %disp(sr)
    r2=1 - sr/st;
    rr=sqrt(r2);
    r = double(rr);% Se fuerza el cast, si no, existian bugs raros.
end