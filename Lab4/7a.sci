// CÂU A: Tích chập vòng bằng phương pháp gấp và dịch
x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

N = length(x);
y_a = zeros(1, N);

// Vòng lặp tính toán chập vòng (circular convolution)
for n = 0:(N-1)
    sum_val = 0;
    for k = 0:(N-1)
        // Dịch vòng: tính (n - k) mod N
        // Hàm pmodulo trong Scilab đảm bảo giá trị luôn dương (vd: -1 mod 5 = 4)
        idx_x = pmodulo(n - k, N); 
        
        // Cần cộng thêm 1 do index của Scilab bắt đầu từ 1
        sum_val = sum_val + h(k + 1) * x(idx_x + 1);
    end
    y_a(n + 1) = sum_val;
end

disp("Kết quả y(n) tính bằng phương pháp gấp và dịch vòng:");
disp(y_a);
