% Average concentrations of plasma insulin over the experimental population
a = [0:30:690];
b = [12, 35.33, 42, 38, 33.67, 30, 27.33, 21.33, 20.67, 20, 18.33, 14.67, 14.67, 15.33, 15.33, 14, 13.33, 12.67, 12, 10.33, 9.67, 10, 9.67, 9.33];
errors = [1.33, 4, 4, 4.67, 3.67, 3.33, 4, 4, 3.33, 3.67, 3, 2.33, 2, 2.67, 2.33, 2.33, 3, 3.33, 2.67, 2.33, 2.67, 2.33, 2.33, 2.67];

% Model 1
figure(1);
[t,y] = ode113(@Model1,[0,750],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 1');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 2
figure(2);
[t,y] = ode113(@Model2,[0,750],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 2');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 3
figure(3);
[t,y] = ode113(@Model3,[0,750],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 3');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 4
figure(4);
[t,y] = ode113(@Model4,[0,750],[5950; 3000.2; 50.4]);
plot(t,y(:,3)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 4');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 5
figure(5);
[t,y] = ode113(@Model5,[0,750],[0; 5950; 0; 3000.2; 50.4]);
plot(t,y(:,5)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 5');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 6
figure(6);
[t,y] = ode113(@Model6,[0,750],[0; 5950; 0; 3000.2; 50.4]);
plot(t,y(:,5)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 6');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 7
figure(7);
[t,y] = ode113(@Model7,[0,750],[5950; 3000.2; 50.4; 0]);

Vmax = 1140;
km = 66000;
V0 = 4.2;
X = y(:,4);
V = V0*(1 + Vmax*X'/(km+X'));

plot(t,y(:,3)/V,'-.b');
axis([0, 750, 0, 50]);
title('Model 7');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 8
figure(8);
[t,y] = ode113(@Model8,[0,750],[0; 5950; 0; 50.4]);
plot(t,y(:,4)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 8');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 9
figure(9);
[t,y] = ode113(@Model9,[0,750],[0; 5950; 0; 50.4]);
plot(t,y(:,4)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 9');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');

% Model 10
figure(10);
[t,y] = ode113(@Model10,[0,750],[0; 5950; 0; 50.4]);
plot(t,y(:,4)/4.2,'-.b');
axis([0, 750, 0, 50]);
title('Model 10');
xlabel('Time (min)');
ylabel('Avarage concentrations (mU/dl)');
hold on;
scatter(a,b, [], 'r');
errorbar(a, b, errors, 'LineStyle','none', 'Color', 'red');
