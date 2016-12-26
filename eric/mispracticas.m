clear all
close all

% - Funciones:

%fun=@funccorazon;   x0=[0;2];      tinic=0;  tfin=2*pi;  jac=@jacfunccorazon;   
%fun=@funcvanderpol; x0=[0.1;0.2];  tinic=0;  tfin=10;    jac=@jacfuncvanderpol; 
%fun=@funcrigida;    x0=0;          tinic=0;  tfin=20;  
%fun=@funcpendulo;   x0=[-pi;1e-10]; tinic=0;  tfin=6*pi; 
%fun=@funcpendulolin; x0=[-pi;1e-10]; tinic=0;  tfin=6*pi;
%fun=@funcdeppresa;   x0=[5;5];   tinic=0;  tfin=100;
%fun=@funccompet;     x0=[10;1];   tinic=0;  tfin=100;
%fun=@funcduffing;    x0=[-2;0];      tinic=0;  tfin=100;
%fun=@funclorenz;     x0=[0;5;75];    tinic=0;  tfin=100;
%fun=@funcbelza;   x0=[0.25;0.75;0.25]; tinic=0; tfin=10; jac=@jacfuncbelza;

%fun=@func23_1;  x0=1;  tinic=0;  tfin=2;
%fun=@func23_2;  x0=1;  tinic=0;  tfin=3;
fun=@funcoscil;  x0=1/exp(1);  tinic=0;  tfin=8;

% - Datos comunes
N=100; itmax=100; hmin=1e-6; TOL=1e-3; 
ERROR=0; H=0; h0=(tfin-tinic)/N;