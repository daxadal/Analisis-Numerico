function jac=jacfuncvanderpol(t,x)
%Jacobiano de la funci�n de Van der Pol (con par�metros)
jac=[           0,              1;
    -2*alfa*x(1)*x(2)-1,  -alfa*(x(1)*x(1)-beta)];
end