// CÂU B: Tính tích chập bằng phương pháp gấp và dịch
x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

// Xác định các chỉ số thời gian
nx = 0:(length(x)-1);
nh = 0:(length(h)-1);
ny = (nx(1)+nh(1)) : (nx($)+nh($));

y_b = zeros(1, length(ny));

// Vòng lặp tính toán chập (gấp và dịch)
for n_idx = 1:length(ny)
    n = ny(n_idx);
    sum_val = 0;
    for k_idx = 1:length(x)
        k = nx(k_idx);
        // Tìm vị trí của phần tử h(n-k) tương ứng
        h_idx = find(nh == (n - k));
        if ~isempty(h_idx) then
            sum_val = sum_val + x(k_idx) * h(h_idx);
        end
    end
    y_b(n_idx) = sum_val;
end

disp("Kết quả y(n) tính bằng phương pháp gấp và dịch:");
disp(y_b);
