function [dQdt] = Model7(t, Q)
dQdt = zeros(4,1);
u = 860/60;
ka1 = 0.0166;
ke = 0.35;

Vavg = 0.01;
kv = 0.01;

dQdt(1) = u - ka1*Q(1);
dQdt(2) = ka1*Q(1) - ka1*Q(2);
dQdt(3) = ka1*Q(2) - ke*Q(3);
dQdt(4) = Vavg - kv*Q(4);
