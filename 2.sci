function [yn, yorigin] = (xn, xorigin, k);
    yn = xn;
    yorigin = xorigin + k;
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    subplot(2,1,1);advance
    plot2d3('gnn', nx, xn);
    plot(nx, xn, 'ro', 'MarkerSize', 8);
    a1 = gca();
    a1.children(2).children.thickness = 2;
    a1.data_bounds = [min([nx, ny]) - 1, min(xn) - 2; max([nx, ny]) + 1, max(xn) + 2];
    title("Original Signal x(n)");
    xlabel("n");
    ylabel("x(n)");
    xgrid(); 
    
    subplot(2,1,2);
    plot2d3('gnn', ny, yn);
    plot(ny, yn, 'ro', 'MarkerSize', 8);
    a2 = gca();
    a2.children(2).children.thickness = 2;
    a2.data_bounds = [min([nx, ny]) - 1, min(xn) - 2; max([nx, ny]) + 1, max(xn) + 2];
    title(msprintf("Delayed Signal y(n) = x(n - %d)", k));
    xlabel("n");
    ylabel("y(n)");
    xgrid();
    
endfunction

