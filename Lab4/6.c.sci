x = [1; 2; -3; 2; 1]; // Khai báo x(n) dưới dạng vector cột
h = [1, 0, -1];

len_x = length(x);
len_h = length(h);
len_y = len_x + len_h - 1;

// Khởi tạo ma trận H với toàn số 0
H = zeros(len_y, len_x);

// Đổ dữ liệu của h(n) vào ma trận H theo từng cột để tạo ma trận Toeplitz
for i = 1:len_x
    H(i : i+len_h-1, i) = h';
end

// Tính tích chập bằng phép nhân ma trận
y_c = H * x;

disp("Kết quả y(n) tính bằng phương pháp ma trận:");
disp(y_c'); // Chuyển vị lại thành vector hàng để dễ nhìn
