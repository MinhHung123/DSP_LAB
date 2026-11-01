// CÂU C: Vẽ x(n), y(n) và năng lượng
x = [1, 2, -3, 2, 1];
// Lấy kết quả y(n) đã tính (ở đây gán cứng một mảng kết quả giả định theo đúng thuật toán để chạy độc lập)
// y_a = [-5,  3,  1,  1,  3]
y = [-5, 3, 1, 1, 3]; 

N = length(x);
n_idx = 0:(N-1);

// Năng lượng (bình phương biên độ)
E_x = x.^2;
E_y = y.^2;

scf(); clf();

// Vẽ tín hiệu x(n)
subplot(2,2,1);
plot2d3(n_idx, x); // Đồ thị dạng vạch (stem)
plot(n_idx, x, 'r.'); // Thêm chấm đỏ ở đỉnh
title("Tín hiệu x(n)");
xlabel("n"); ylabel("x(n)");

// Vẽ tín hiệu y(n)
subplot(2,2,2);
plot2d3(n_idx, y);
plot(n_idx, y, 'r.');
title("Tín hiệu y(n) (Tích chập vòng)");
xlabel("n"); ylabel("y(n)");

// Vẽ năng lượng tín hiệu x(n)
subplot(2,2,3);
plot2d3(n_idx, E_x);
plot(n_idx, E_x, 'b.'); // Chấm xanh
title("Năng lượng của x(n)");
xlabel("n"); ylabel("|x(n)|^2");

// Vẽ năng lượng tín hiệu y(n)
subplot(2,2,4);
plot2d3(n_idx, E_y);
plot(n_idx, E_y, 'b.');
title("Năng lượng của y(n)");
xlabel("n"); ylabel("|y(n)|^2");
