clc; clf();

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-2, 2], [0, 0], 'k-');
plot([0, 0], [-2, 2], 'k-');

z_zeros = [0, 0]; // Không kép
z_poles = [1, 1]; // Cực kép

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(0.05, 0.08, "o (kép)");
xstring(1.05, 0.08, "x (kép)");
xstring(1.02, -0.15, "z = 1");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.8, -1.8; 1.8, 1.8];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (a): Pole-Zero Plot của x(n) = (1+n)u(n)", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_a.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_a.png");
