// CÂU B: Tính tích chập vòng bằng phương pháp ma trận
x = [1; 2; -3; 2; 1]; // Vector cột
h = [1; 0; -1; -1; 1];

N = length(x);
H = zeros(N, N);

// Khởi tạo ma trận vòng (Circulant matrix) từ h(n)
for n = 0:(N-1)
    for k = 0:(N-1)
        idx_h = pmodulo(n - k, N);
        H(n + 1, k + 1) = h(idx_h + 1);
    end
end

// Tính tích chập vòng bằng phép nhân ma trận
y_b = H * x;

disp("Kết quả y(n) tính bằng phương pháp ma trận:");
disp(y_b'); // Chuyển vị thành hàng ngang để dễ đọc
