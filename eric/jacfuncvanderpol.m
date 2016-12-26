function jac=jacfuncvanderpol(t,x)
%Jacobiano de la función de Van der Pol (con parámetros)
jac=[           0,              1;
    -2*alfa*x(1)*x(2)-1,  -alfa*(x(1)*x(1)-beta)];
end