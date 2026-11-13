clc; clf();
r = 0.7; w0 = %pi / 3; phi = %pi / 6;
z_zeros = [0, r * cos(w0 - phi) / cos(phi)];
z_poles = [r * exp(%i * w0), r * exp(-%i * w0)];

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot(r*cos(t), r*sin(t), 'm:');
plot([-1.8, 1.8], [0, 0], 'k-');
plot([0, 0], [-1.8, 1.8], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(real(z_poles(1)) + 0.05, imag(z_poles(1)), "p_1 = r e^{j\omega_0}");
xstring(real(z_poles(2)) + 0.05, imag(z_poles(2)), "p_2 = r e^{-j\omega_0}");
xstring(0.05, -0.15, "z_1 = 0");
xstring(z_zeros(2) + 0.05, -0.15, "z_2 = 0.7");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.5, -1.5; 1.5, 1.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (f): Pole-Zero Plot [r=0.7, \omega_0=\pi/3, \phi=\pi/6]", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_f.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_f.png");
