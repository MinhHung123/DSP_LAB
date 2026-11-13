clc; clf();
z_zeros = [0];
z_poles = [-0.5];

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-1.8, 1.8], [0, 0], 'k-');
plot([0, 0], [-1.8, 1.8], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(-0.5 - 0.25, 0.1, "p = -0.5");
xstring(0.05, 0.1, "z = 0");
xstring(1.02, 0.1, "|z| = 1");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.5, -1.5; 1.5, 1.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (c): Pole-Zero Plot của x(n) = (-0.5)^n u(n)", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_c.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_c.png");
