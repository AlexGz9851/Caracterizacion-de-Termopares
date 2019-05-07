function y=evaluate(a, x)
    l  =(length(a));
    s=0;
for i=1:l
    s= times(x,s)+a(l-i+1);
end
 y=double(s);

end