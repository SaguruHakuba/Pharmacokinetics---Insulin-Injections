
% Model 1
figure(1);
[t,y] = ode113(@Model1,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

% Model 2
figure(2);
[t,y] = ode113(@Model2,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

% Model 3
figure(3);
[t,y] = ode113(@Model3,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

% Model 4
figure(4);
[t,y] = ode113(@Model4,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');


% Model 7
figure(7);
[t,y] = ode113(@Model7,[0,720],[5950; 3000.2; 50.4; 0]);

Vmax = 1140;
km = 66000;
V0 = 4.2;
X = y(:,4);
V = V0*(1 + Vmax*X'/(km+X'));

plot(t,y(:,3)/V,'-o');


