clc; clf();
a = 0.8; w0 = %pi / 4;
z_zeros = [0, a, -a];
z_poles = [a*exp(%i*w0), a*exp(%i*w0), a*exp(-%i*w0), a*exp(-%i*w0)]; // Cực kép

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot(a*cos(t), a*sin(t), 'm:'); // Đường tròn bán kính a
plot([-1.8, 1.8], [0, 0], 'k-');
plot([0, 0], [-1.8, 1.8], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(real(z_poles(1)) + 0.05, imag(z_poles(1)), "p_1 (kép)");
xstring(real(z_poles(3)) + 0.05, imag(z_poles(3)), "p_2 (kép)");
xstring(0.05, -0.15, "z = 0");
xstring(a + 0.05, -0.15, "z = a");
xstring(-a - 0.25, -0.15, "z = -a");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.5, -1.5; 1.5, 1.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (d): Pole-Zero Plot [a=0.8, \omega_0=\pi/4, Cực kép]", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_d.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_d.png");
