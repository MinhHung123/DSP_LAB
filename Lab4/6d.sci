// CÂU D: Vẽ x(n), y(n) và năng lượng của tín hiệu
x = [1, 2, -3, 2, 1];
// Có thể lấy lại biến y_b hoặc y_c từ câu trước, ở đây khai báo thẳng kết quả
y = [1, 2, -4, 0, 4, -2, -1]; 

nx = 0:(length(x)-1);
ny = 0:(length(y)-1);

// Tính năng lượng từng mẫu tín hiệu (bình phương biên độ)
E_x = x.^2;
E_y = y.^2;

// Tạo cửa sổ đồ thị mới
scf(); clf();

// Vẽ x(n)
subplot(2,2,1);
plot2d3(nx, x); // plot2d3 dùng để vẽ dạng rời rạc (stem) trong Scilab
plot(nx, x, 'r.');
title("Tín hiệu x(n)");
xlabel("n"); ylabel("x(n)");

// Vẽ y(n)
subplot(2,2,2);
plot2d3(ny, y);
plot(ny, y, 'r.');
title("Tín hiệu y(n)");
xlabel("n"); ylabel("y(n)");

// Vẽ năng lượng của x(n)
subplot(2,2,3);
plot2d3(nx, E_x);
plot(nx, E_x, 'b.');
title("Năng lượng của x(n)");
xlabel("n"); ylabel("|x(n)|^2");

// Vẽ năng lượng của y(n)
subplot(2,2,4);
plot2d3(ny, E_y);
plot(ny, E_y, 'b.');
title("Năng lượng của y(n)");
xlabel("n"); ylabel("|y(n)|^2");
