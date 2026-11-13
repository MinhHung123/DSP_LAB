clc; clf();
a = 0.5;
z_zeros = [0, (a + 1/a)/2]; // 0 và 1.25
z_poles = [a, 1/a];         // 0.5 và 2.0

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-2.6, 2.6], [0, 0], 'k-');
plot([0, 0], [-2.6, 2.6], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(a + 0.05, 0.1, "p_1 = a = 0.5");
xstring(1/a + 0.05, 0.1, "p_2 = 1/a = 2");
xstring((a + 1/a)/2 + 0.05, -0.18, "z_2 = 1.25");
xstring(0.05, -0.18, "z_1 = 0");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-2.5, -2.5; 2.5, 2.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (b): Pole-Zero Plot của x(n) = (a^n + a^{-n})u(n) [a = 0.5]", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_b.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_b.png");
