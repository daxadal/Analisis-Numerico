function jac = jacfuncpendulo( t, x, par )
%Jacobiano ecuaci�n del p�ndulo
%Par�metros
M=par(1); l=par(2); g=par(3); beta=par(4);
%Jacobiano
jac=[0,				1;
   -g/l*cos(x(1)), - 2*beta];
end