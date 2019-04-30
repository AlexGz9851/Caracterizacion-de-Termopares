matrix = [2, -1, 1; 3, 1, -2; -1, 2, 5]
results = [2,9,-5]
fHalfLongitude = length(matrix)-1
fHalfHeight = 2
variableToMultiply = 0
%Primer for para la primera mitad%
for i = 1 : 1 : fHalfLongitude %Recorre en horizontal porque primero se resuelve hacia arriba%
    for j = length(matrix) : -1 : fHalfHeight %Recorre hacia arriba%
        if matrix(j,i) ~= 0
            if matrix(j,i) > 0 
                variableToMultiply = -(matrix(j,i))/(matrix(1,i))
                if matrix(j,i) + variableToMultiply*matrix(1,i) ~= 0
                    variableToMultiply = variableToMultiply * -1
                end
            else
                variableToMultiply = (matrix(j,i))/(matrix(1,i))
                if matrix(j,i) + variableToMultiply*matrix(1,i) ~= 0
                    variableToMultiply = variableToMultiply * -1
                end
            end
            for h = i: 1 : length(matrix) %Modifica los valores de esa columna y resuleve los 0 de la matriz%
                matrix(j,h) = matrix(j,h) + variableToMultiply*matrix(1,h)
            end
            results(j) = results(j) + variableToMultiply*results(1)
        end 
    end
    fHalfHeight = fHalfHeight + 1
    fHalfLongitude = fHalfLongitude - 1
end

sHalfLongitude = 2
sHalfHeight = length(matrix)-1
variableToMultiply = 0
for i = length(matrix) : -1 : sHalfLongitude %Recorre en horizontal porque primero se resuelve hacia abajo%
    for j = 1 : 1 : sHalfHeight %Recorre hacia abajo%
        if matrix(j,i) ~= 0
            if matrix(j,i) > 0 
                variableToMultiply = -(matrix(j,i))/(matrix(sHalfHeight+1,i))
                if matrix(j,i) + variableToMultiply*matrix(sHalfHeight+1,i) ~= 0
                    variableToMultiply = variableToMultiply * -1
                end
            else
                variableToMultiply = (matrix(j,i))/(matrix(sHalfHeight+1,i))
                if matrix(j,i) + variableToMultiply*matrix(sHalfHeight+1,i) ~= 0
                    variableToMultiply = variableToMultiply * -1
                end
            end
            for h = i: -1 : 1 %Modifica los valores de esa columna y resuleve los 0 de la matriz%
                matrix(j,h) = matrix(j,h) + variableToMultiply*matrix(sHalfHeight+1,h)
            end
            results(j) = results(j) + variableToMultiply*results(sHalfHeight+1)
        end 
    end
    sHalfHeight = sHalfHeight - 1
    sHalfLongitude = sHalfLongitude + 1
end

position = 1
fResults = zeros(1,length(results));


for i = 1: 1:length(matrix)
    
    for j = 1: 1:length(matrix)
        if j==position
            fResults(position) = results(i)/matrix(i,j)
        end
    end
    position = position + 1
    
end
disp(matrix)
disp(results)
disp(fResults)