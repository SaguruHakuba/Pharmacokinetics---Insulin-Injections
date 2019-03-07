function [dQdt] = Model2(t, Q)
dQdt = zeros(3,1);
u = 860/60;
ka1 = 0.0183;
a = 148*10^(-14);
ke = 0.35;

dQdt(1) = u - (ka1 - a*Q(1))*Q(1);
dQdt(2) = (ka1 - a*Q(1))*Q(1) - (ka1 - a*Q(2))*Q(2);
dQdt(3) = (ka1 - a*Q(2))*Q(2) - ke*Q(3);