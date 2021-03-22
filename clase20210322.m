clc; clear; close all;

dt = 1e-3;
t = -10:dt:10;

f_t = 3 * triangular(t/3);
g_t = escalon(t + 3) - escalon(t - 3);

figure(1)

subplot(2,2,1)
plot(t, f_t, 'b', 'LineWidth', 2);
grid on;
xlabel('t[s]');
title('f(t)');

subplot(2,2,2)
plot(t, g_t, 'g', 'LineWidth', 2);
grid on;
ylim([0 3])
xlabel('t[s]');
title('g(t)');

[R, lags] = xcorr(g_t, f_t);
R = R * dt;
tao = lags * dt;

subplot(2,2, [3 4]);
plot(tao, R, 'r', 'LineWidth', 2);
grid on
hold on
% ylim([0 3])
xlabel('t[s]');
title('R_{f,g}(\tau)');

R_b = (((tao + 6).^2) / 2) .* (escalon(tao + 6) - escalon(tao + 3));
plot(tao, R_b, 'k:', 'LineWidth', 1.5);
legend('xcorr()','R_b')
