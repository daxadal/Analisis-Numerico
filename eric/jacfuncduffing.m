function jac = jacfuncduffing( ~, x, par )
%Jacobiano de la ecuaci�n de Duffing
%Par�metros
alfa= par;
%Jacobiano
jac = [0,			1;
	-3*x(1)*x(1)+1,	-alfa];
end