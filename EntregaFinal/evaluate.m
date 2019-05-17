function y=evaluate(a, x)
    % funcion que evalua un polinomio de la forma
    % f = anx^n + an-1x^n-1 + an-2x^n-2 +  . . . + a2x^2 + a1x + a0
    % de forma recursiva. 
    % a es el array de coeficientes.
    l  =(length(a));
    s=0;
for i=1:l
    s= times(x,s)+a(l-i+1);
end
 y=double(s);

end