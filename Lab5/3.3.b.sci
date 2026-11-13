clc; clf();
r_in = 2.0; r_max = 3.6;

t = linspace(0, 2*%pi, 300);
plot(cos(t), sin(t), 'k--');
plot([-4, 4], [0, 0], 'k-');
plot([0, 0], [-4, 4], 'k-');

// Tô miền ROC miền ngoài
r_steps = linspace(r_in, r_max, 40);
for r = r_steps
    plot(r*cos(t), r*sin(t), 'c-');
end
plot(r_in*cos(t), r_in*sin(t), 'r--');

plot([0], [0], 'bo'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;
plot([1/3, 2], [0, 0], 'rx'); e = gce(); e.children.mark_size = 9; e.children.thickness = 2;

xstring(1/3 + 0.05, 0.15, "p_1 = 1/3");
xstring(2 + 0.05, 0.15, "p_2 = 2");
xstring(1.02, 0.1, "|z| = 1");
xstring(2.1, 1.5, "ROC: |z| > 2");

ax = gca(); ax.isoview = "on"; ax.data_bounds = [-3.8, -3.8; 3.8, 3.8];
xgrid(color("lightgray"));
xlabel("Re(z)", "fontsize", 3); ylabel("Im(z)", "fontsize", 3);
title("Bài 3.3 (b): Miền hội tụ ROC của x_2(n): |z| > 2", "fontsize", 3);

xs2png(gcf(), "Labs/Lab_5/figures/bai_3_3_b.png");
disp("Đã lưu ảnh: Labs/Lab_5/figures/bai_3_3_b.png");
