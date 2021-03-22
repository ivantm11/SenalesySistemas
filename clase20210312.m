clc; clear all; close all; 

dt = 1e-3;
t = 0:dt:25;

f_t = 8 * pulso((t-5)/6);
g_t = 4 * pulso((t-16)/8);
g_1_t = (1/2) * f((t-28/3)/(4/3));

plot(t, f_t);
hold on;
plot(t, g_t);
hold on;
plot(t, g_1_t);

legend('f(t)', 'g(t) con pulso', 'g(t) a partir de f(t)');
