
figure(1);
[t,y] = ode113(@Model1,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

figure(2);
[t,y] = ode113(@Model2,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

figure(3);
[t,y] = ode113(@Model3,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');

figure(4);
[t,y] = ode113(@Model4,[0,720],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-o');