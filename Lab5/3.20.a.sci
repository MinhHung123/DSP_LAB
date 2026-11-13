clc; clf();
r = 0.75; w0 = %pi / 4;
z_zeros = [0];
z_poles = [r * exp(%i * w0), r * exp(-%i * w0)];

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot(r*cos(t), r*sin(t), 'm:'); // Đường tròn bán kính r chứa cặp cực
plot([-1.8, 1.8], [0, 0], 'k-');
plot([0, 0], [-1.8, 1.8], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(real(z_poles(1)) + 0.05, imag(z_poles(1)), "p_1 = r e^{j\omega_0}");
xstring(real(z_poles(2)) + 0.05, imag(z_poles(2)), "p_2 = r e^{-j\omega_0}");
xstring(0.05, -0.15, "z_0 = 0");
xstring(1.02, 0.1, "|z| = 1");
xstring(r + 0.05, -0.15, "r = 0.75");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.5, -1.5; 1.5, 1.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.20 (a): Pole-Zero Plot của x_1(n) = (r^n sin(\omega_0 n))u(n)", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_20_a.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_20_a.png");
