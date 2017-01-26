function [t,v] = midispnolin(ffxfy,t0,tfin,a,b,N,c1,c2,TOL)
%Método de disparo lineal
%ffxfy: funcion y sus derivadas parciales

%Algoritmo
%Resolución del PVI por Newton
s=(b-a)/(tfin-t0); %s0
error = 100;
while error > TOL
	%Resolución de los PVIs
	[t,vwzu]=mirk4(t0,tfin,N,[a;s;0;1],fundispnolin,ffxfy);
	
	%Calcular s_(k+1) a partir de s_k
	s=s-(vwzu(1,N+1)-b)/vwzu(3,N+1);
	
	error= vwzu(1,N+1)-b;
end

v=vwzu(1,:);
end