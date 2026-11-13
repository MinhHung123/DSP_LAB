clc; clf();
r_in = 0.5; r_out = 3.0;

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-4, 4], [0, 0], 'k-');
plot([0, 0], [-4, 4], 'k-');

r_steps = linspace(r_in, r_out, 40);
for r = r_steps
    plot(r*cos(t), r*sin(t), 'c-');
end
plot(r_in*cos(t), r_in*sin(t), 'r--');
plot(r_out*cos(t), r_out*sin(t), 'b--');

plot([0], [0], 'bo'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;
plot([r_in, r_out], [0, 0], 'rx'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(r_in + 0.05, 0.15, "p_1 = 1/2");
xstring(r_out + 0.05, 0.15, "p_2 = 3");
xstring(1.02, 0.1, "|z| = 1");
xstring(1.2, 1.2, "ROC: 1/2 < |z| < 3");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-3.8, -3.8; 3.8, 3.8];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.3 (d): Miền hội tụ ROC của x_4(n) = x_1(-n): 1/2 < |z| < 3", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_3_d.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_3_d.png");
