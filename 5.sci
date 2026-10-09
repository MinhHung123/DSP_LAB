function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    // 1. Xác định trục thời gian của từng tín hiệu
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    // 2. Xác định miền thời gian chung
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    ny = n_min:n_max;
    
    // 3. Khởi tạo vector đệm chứa số 0 (Zero-padding)
    y1 = zeros(1, length(ny));
    y2 = zeros(1, length(ny));
    
    // Đặt mẫu vào đúng tọa độ tương ứng
    y1(n1 - n_min + 1) = x1n;
    y2(n2 - n_min + 1) = x2n;
    
    // 4. Nhân từng phần tử và tính vị trí gốc tọa độ mới
    yn = y1 .* y2;
    yorigin = 1 - n_min;
    
    // 5. Vẽ cả 3 tín hiệu trên cùng một cửa sổ đồ họa
    clf();
    
    // Tính cận biên độ để khung nhìn đồng bộ, không bị cấn mép
    min_val = min([x1n, x2n, yn]) - 1;
    max_val = max([x1n, x2n, yn]) + 1;
    
    // Đồ thị 1: Tín hiệu x1(n)
    subplot(3, 1, 1);
    plot2d3('gnn', n1, x1n);
    plot(n1, x1n, 'ro', 'MarkerSize', 8);
    a1 = gca();
    a1.children(2).children.thickness = 2;
    a1.data_bounds = [n_min - 1, min_val; n_max + 1, max_val];
    title("Signal x1(n)");
    xlabel("n");
    ylabel("x1(n)");
    xgrid();
    
    // Đồ thị 2: Tín hiệu x2(n)
    subplot(3, 1, 2);
    plot2d3('gnn', n2, x2n);
    plot(n2, x2n, 'bo', 'MarkerSize', 8);
    a2 = gca();
    a2.children(2).children.thickness = 2;
    a2.data_bounds = [n_min - 1, min_val; n_max + 1, max_val];
    title("Signal x2(n)");
    xlabel("n");
    ylabel("x2(n)");
    xgrid();
    
    // Đồ thị 3: Tín hiệu tích y(n) = x1(n) .* x2(n)
    subplot(3, 1, 3);
    plot2d3('gnn', ny, yn);
    plot(ny, yn, 'mo', 'MarkerSize', 8);
    a3 = gca();
    a3.children(2).children.thickness = 2;
    a3.data_bounds = [n_min - 1, min_val; n_max + 1, max_val];
    title("Product Signal y(n) = x1(n) .* x2(n)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();
endfunction
