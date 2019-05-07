function r = pearson( y, y_reg)
    p= sum(y) / length(y);
    disp(p)
    st = sum(times((y-p),(y-p)));
    disp(st)
    sr = sum(times((y-y_reg),(y-y_reg)));
    disp(sr)
    r2=1 - sr/st;
    rr=sqrt(r2);
    r = double(rr);
end