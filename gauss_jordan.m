matrix = [2, -1, 1; 3, 1, -2; -1, 2, 5]
fHalfL = 1
fHalfS = length(matrix)-1
for i = 1 : 1 : fHalfS
    for j = length(matrix) : -1 : fHalfL
        for h = i: 1 : fHalfS
            %Aqui se resuleve los 0 de la matriz%
        end 
    end
    fHalfL = fHalfL + 1
    fHalfS = fHalfS - 1
end