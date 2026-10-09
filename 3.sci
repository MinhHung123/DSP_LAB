function [yn, yorigin] = fold(xn, xorigin)
    L = length(xn);
    yn = xn($:-1:1);
    yorigin = L - xorigin + 1;
    nx = (1:L) - xorigin;
    ny = (1:L) - yorigin;
    
    subplot(2, 1, 1);
    plot2d3('gnn', nx, xn);
    plot(nx, xn, 'ro', 'MarkerSize', 8);
    a1 = gca();
    a1.children(2).children.thickness = 2;
    a1.data_bounds = [min([nx, ny]) - 1, min(xn) - 2; max([nx, ny]) + 1, max(xn) + 2];
    title("Original Signal x(n)");
    xlabel("n");
    ylabel("x(n)");
    xgrid();
    
    subplot(2, 1, 2);
    plot2d3('gnn', ny, yn);
    plot(ny, yn, 'bo', 'MarkerSize', 8);
    a2 = gca();
    a2.children(2).children.thicynkness = 2;
    a2.data_bounds = [min([nx, ny]) - 1, min(xn) - 2; max([nx, ny]) + 1, max(xn) + 2];
    title("Folded Signal y(n) = x(-n)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();
    
endfunction
