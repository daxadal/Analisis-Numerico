function jac=jacfuncbelza(t,x)
%Jacobiano de la ecuación de Belousov-Zhabotinsky
jac=[alfa*( -x(2)+1-2*beta*x(1) ), alfa*(1-x(1)),   0;
            -x(2)/alfa,           (-1-x(1))/alfa, gamma/alfa;
               delta,                0,            -delta];
end