function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    ny = n_min:n_max;
    
    y1 = zeros(1, length(ny));
    y2 = zeros(1, length(ny));
    
    y1((n1 - n_min + 1)) = x1n;
    y2((n2 - n_min + 1)) = x2n;
    
    yn = y1 + y2;
    yorigin = 1 - n_min;
    
    subplot(3, 1, 1);
    plot2d3('gnn', n1, x1n);
    plot(n1, x1n, 'ro', 'MarkerSize', 8);
    a1 = gca();
    a1.children(2).children.thickness = 2;
    a1.data_bounds = [n_min - 1, min([x1n, x2n, yn]) - 1; n_max + 1, max([x1n, x2n, yn]) + 1];
    title("Signal x1(n)");
    xlabel("n");
    ylabel("x1(n)");
    xgrid();
    
    // Đồ thị x2(n)
    subplot(3, 1, 2);
    plot2d3('gnn', n2, x2n);
    plot(n2, x2n, 'bo', 'MarkerSize', 8);
    a2 = gca();
    a2.children(2).children.thickness = 2;
    a2.data_bounds = [n_min - 1, min([x1n, x2n, yn]) - 1; n_max + 1, max([x1n, x2n, yn]) + 1];
    title("Signal x2(n)");
    xlabel("n");
    ylabel("x2(n)");
    xgrid();
    
    // Đồ thị tổng y(n)
    subplot(3, 1, 3);
    plot2d3('gnn', ny, yn);
    plot(ny, yn, 'mo', 'MarkerSize', 8);
    a3 = gca();
    a3.children(2).children.thickness = 2;
    a3.data_bounds = [n_min - 1, min([x1n, x2n, yn]) - 1; n_max + 1, max([x1n, x2n, yn]) + 1];
    title("Sum Signal y(n) = x1(n) + x2(n)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();
endfunction
