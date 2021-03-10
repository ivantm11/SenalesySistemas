clc; clear all; close all; 

dt = 1e-3;
t = -7:dt:15;

%% Función escalón
% f_t = escalon(t-5);
%f_t = 5 * pulso((t-6)/6);
f1_t = 15 * pulso((t-4)/20) - 9 * pulso(t/12);
f2_t = 6 * pulso((t-4)/20) + 9 * pulso((t-10)/8);
figure(1)
plot(t, f1_t, 'b', 'LineWidth', 4);
hold on;
plot(t, f2_t, ':r', 'LineWidth', 2);
grid on;
xlabel('t[s]');
legend('Comparten dominio', 'Pulsos disjuntos');
%xlim([-4 15]);
%ylim([-0.1 6]);

%% Función triangular unitaria
g_t = 14 * triangular((t-4)/8);
figure(2)
plot(t, g_t, 'b', 'LineWidth', 2);
grid on;
xlim([-6 14])
xlabel('t[s]');
