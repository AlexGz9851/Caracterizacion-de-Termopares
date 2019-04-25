%Valores de entrada%
x = [0,1,2,3,4,5];
y = [2.1,7.7,13.6,27.2,40.9,61.1];
m = 2;

h = length(x);
a = zeros(1,m+1);
sums = zeros(m+1,m+1);
results = zeros(1,m+1);

sums(1,1) = h;
grado = 1;
gradoresults = 1;
for i = 1: 1: m+1
    if i == 1
      for j = 2: 1: m+1
        for n = 1: 1: h
           sums(i,j) = sums(i,j) + x(n)^grado;
        end
        grado = grado + 1;
        if j > 1
           sums(i+1,j-1) = sums(i,j);
        end
      end
      for p = 1: 1: m
        sums(i+1,p) = sums(i,p+1);
      end
      for n = 1: 1: h
        results(i) = results(i) + y(n);
      end
    else
        for n = 1: 1: h
            sums(i,m+1) = sums(i,m+1) + x(n)^grado;
        end
        grado = grado + 1;
        if(i < m+1)
            for p = 1: 1: m
                sums(i+1,p) = sums(i,p+1);
            end
        end
        for n = 1: 1: h
            results(i) = results(i) + y(n)*(x(n)^gradoresults);
        end
        gradoresults = gradoresults +1;
    end
end

disp(sums);
disp(results);




