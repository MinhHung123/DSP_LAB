function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    // 1. Tính toán tích chập bằng hàm có sẵn của Scilab
    yn = convol(xn, hn);
    
    // 2. Tính vị trí gốc tọa độ mới
    yorigin = xorigin + horigin - 1;
    
    // 3. Xác định trục thời gian thực tế cho từng tín hiệu
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    // 4. Vẽ đồ thị trên cùng một cửa sổ
    clf();
    
    min_x = min([nx, nh, ny]) - 1;
    max_x = max([nx, nh, ny]) + 1;
    min_y = min([xn, hn, yn]) - 1;
    max_y = max([xn, hn, yn]) + 1;
    
    // Đồ thị x(n)
    subplot(3, 1, 1);
    plot2d3('gnn', nx, xn);
    plot(nx, xn, 'ro', 'MarkerSize', 8);
    a1 = gca();
    a1.children(2).children.thickness = 2;
    a1.data_bounds = [min_x, min_y; max_x, max_y];
    title("Input Signal x(n)");
    xlabel("n");
    ylabel("x(n)");
    xgrid();
    
    // Đồ thị h(n)
    subplot(3, 1, 2);
    plot2d3('gnn', nh, hn);
    plot(nh, hn, 'bo', 'MarkerSize', 8);
    a2 = gca();
    a2.children(2).children.thickness = 2;
    a2.data_bounds = [min_x, min_y; max_x, max_y];
    title("Impulse Response h(n)");
    xlabel("n");
    ylabel("h(n)");
    xgrid();
    
    // Đồ thị y(n) = x(n) * h(n)
    subplot(3, 1, 3);
    plot2d3('gnn', ny, yn);
    plot(ny, yn, 'mo', 'MarkerSize', 8);
    a3 = gca();
    a3.children(2).children.thickness = 2;
    a3.data_bounds = [min_x, min_y; max_x, max_y];
    title("Output Signal y(n) = x(n) * h(n)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();
endfunction
