mispracticas
if ~exist('h0','var')
    h0 = (tfin - t0)/N;
end
if ~exist('hmin','var')
    hmin = 10^(-5);
end
if ~exist('TOL','var')
    TOL = 10^(-3);
end
[t, u, H, ERROR, rechazo] = mimetadap(t0,tfin, x0, h0, hmin, TOL, fun, par, metodo, ord);
misgraficas