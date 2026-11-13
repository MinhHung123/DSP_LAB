clc; clf();
r_in = 1/3; r_out = 2.0;

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-3, 3], [0, 0], 'k-');
plot([0, 0], [-3, 3], 'k-');

r_steps = linspace(r_in, r_out, 40);
for r = r_steps
    plot(r*cos(t), r*sin(t), 'c-');
end
plot(r_in*cos(t), r_in*sin(t), 'r--');
plot(r_out*cos(t), r_out*sin(t), 'b--');

plot([0], [0], 'bo'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;
plot([r_in, r_out], [0, 0], 'rx'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(r_in + 0.05, 0.15, "p_1 = 1/3");
xstring(r_out + 0.05, 0.15, "p_2 = 2");
xstring(1.02, 0.1, "|z| = 1");
xstring(0.7, 0.7, "ROC: 1/3 < |z| < 2");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-2.8, -2.8; 2.8, 2.8];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.3 (c): Miền hội tụ ROC của x_3(n) = x_1(n+4): 1/3 < |z| < 2", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_3_c.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_3_c.png");
