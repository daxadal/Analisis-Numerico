function [t,u] = mimilsimp(t0,tfin,N,x0,f,par)
%M�todo de predicci�n-correcci�n Milne 4/Simpson 2
%Inicalizaci�n de variables
h=(tfin-t0)/N;
t=t0:h:tfin;
dim=size(x0,1);
u=zeros(dim,N+1);

%Inicializaci�n de vector auxiliar de evaluaciones de f
fv=zeros(dim,N+1);
%Inicalizaci�n m�todo Adams-Bashforth de orden 4 con RK cl�sico
[t_dummy, u_init] = mirk4(t0,t0+3*h,3,x0,f,par);

%Inicializacion de los datos iniciales y evaluaciones auxiliares
u(:,1:4)=u_init;
fv(:,1)=f(t(1),u(:,1),par);
fv(:,2)=f(t(2),u(:,2),par);
fv(:,3)=f(t(3),u(:,3),par);
%Algoritmo
for n=4:N
    fv(:,n)=f(t(n),u(:,n),par);
	
	%Predicci�n: Milne de 4 pasos
    clf=2*fv(:,n)-fv(:,n-1)+2*fv(:,n-2); %C�lculo auxiliar de la combinaci�n lineal de evaluaciones de f
    u(:,n+1)=u(:,n-3)+clf*4*h/3;
	
	%Correcci�n: Simpson de 2 pasos
    clf=fv(:,n+1)+4*fv(:,n)+fv(:,n-1); %C�lculo auxiliar de la combinaci�n lineal de evaluaciones de f
    u(:,n+1)=u(:,n-1)+clf*h/3;
end
end