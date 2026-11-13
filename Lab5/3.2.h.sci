clc; clf();
k_vals = 1:9;
z_zeros = 0.5 * exp(%i * 2 * %pi * k_vals / 10);
z_poles = zeros(1, 9); // 9 cực tại gốc

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot(0.5*cos(t), 0.5*sin(t), 'm:');
plot([-1.8, 1.8], [0, 0], 'k-');
plot([0, 0], [-1.8, 1.8], 'k-');

plot(real(z_zeros), imag(z_zeros), 'bo');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

plot(real(z_poles), imag(z_poles), 'rx');
e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(0.04, 0.08, "x (bội 9 tại gốc)");
xstring(0.55, 0.05, "r = 0.5 (9 zeros)");
xstring(1.02, 0.1, "|z| = 1");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-1.5, -1.5; 1.5, 1.5];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.2 (h): Pole-Zero Plot [9 cực tại gốc z=0, 9 không trên r=0.5]", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_2_h.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_2_h.png");
