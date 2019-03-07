function [dQdt] = Model3(t, Q)
dQdt = zeros(3,1);
u = 860/60;
km = 66*10^3;
vmax = 1140;
ke = 0.35;

dQdt(1) = u - vmax*Q(1)/(km+Q(1));
dQdt(2) = vmax*Q(1)/(km+Q(1)) - vmax*Q(2)/(km+Q(2));
dQdt(3) = vmax*Q(2)/(km+Q(2)) - ke*Q(3);
