function [dQdt] = Model5(t, Q)
dQdt = zeros(5,1);
ui = 14.333;
ub = 0;
ka1 = 0.0189;
ka2 = 0.0158;

dQdt(1) = ui - ka1*Q(1);
dQdt(2) = ub - ka2*Q(2);
dQdt(3) = ka1*Q(1) - ka1*Q(3);
dQdt(4) = ka2*Q(2) - ka2*Q(4);
