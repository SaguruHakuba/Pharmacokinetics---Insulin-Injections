function [dQdt] = Model9(t, Q)
dQdt = zeros(4,1);
k = 0.71;
ka1 = 0.0251;
ka2 = 0.0124
ke = 0.35;

B = 0.15;
ui = 860/60;
ub = 10;

u = ui + B*ub;

dQdt(1) = k*u - ka1*Q(1);
dQdt(2) = (1-k)*u - ka2*Q(2);
dQdt(3) = ka1*Q(1) - ka1*Q(3);
dQdt(4) = ka1*Q(3) +ka2*Q(2) - ke*Q(4);
