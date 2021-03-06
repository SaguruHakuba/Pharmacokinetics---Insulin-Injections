function [dQdt] = Model6(t, Q)
dQdt = zeros(5,1);
u = 860/60;
k = 0.61;
ka1 = 0.0101;
ka2 = 0.0180;
ke = 0.35;

dQdt(1) = k*u - ka1*Q(1);
dQdt(2) = (1-k)*u - ka2*Q(2);
dQdt(3) = ka1*Q(1) - ka1*Q(3);
dQdt(4) = ka2*Q(2) - ka2*Q(4);
dQdt(5) = ka1*Q(3) + ka2*Q(4) - ke*Q(5);