function [dQdt] = Model11(t, Q)
dQdt = zeros(1,1);
u = 860/60;
ke = 0.35;

a = 2.44;
b = 53.42;
bi = 79.19;
s = 2.01;
si = 2.86;
ub = 12;

fun = @(tao) u*(t-tao)^(si-1)*si*bi^si/(bi^si+(t-tao)^si)^2;

dQdt(1) = -ke*Q(1) + ub*t^(s-1)*s*(a*ub+b)^s/((a*ub+b)+t^s)^2 + integral