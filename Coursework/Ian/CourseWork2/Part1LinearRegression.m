%%
    b0 = 3;
    b1 = 4;
    f = @(x) b0-b1*x;
    %%
    ezplot( f, 0, 5 )