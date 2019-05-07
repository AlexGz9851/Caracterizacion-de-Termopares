
function xx= gauss_jordan(matrix, results)
    fHalfLongitude = length(matrix)-1;
    fHalfHeight = 2;
    variableToMultiply = 0;
    divde = 0;
    for i = 1: 1: length(matrix)
        divde = matrix(i,1);
        for j = 1: 1: length(matrix)
            matrix(i,j) = matrix(i,j)/divde;
        end
        results(i) = results(i)/divde;
    end

    %Primer for para la primera mitad%
    for i = 1 : 1 : fHalfLongitude %Recorre en horizontal porque primero se resuelve hacia arriba%
        for j = length(matrix) : -1 : fHalfHeight %Recorre hacia arriba%
            if matrix(j,i) ~= 0
                variableToMultiply = -(matrix(j,i))/(matrix(fHalfHeight-1,i));
                    if matrix(j,i) + variableToMultiply*matrix(fHalfHeight-1,i) ~= 0
                        variableToMultiply = variableToMultiply * -1;
                    end
                for h = i: 1 : length(matrix) %Modifica los valores de esa columna y resuleve los 0 de la matriz%
                    matrix(j,h) = matrix(j,h) + variableToMultiply*matrix(fHalfHeight-1,h);
                end
                results(j) = results(j) + variableToMultiply*results(fHalfHeight-1);
            end  
        end
        fHalfHeight = fHalfHeight + 1;
        fHalfLongitude = fHalfLongitude - 1;
    end
    %Segunda mitad de la matriz%
    sHalfLongitude = 2;
    sHalfHeight = length(matrix)-1;
    variableToMultiply = 0;
    for i = length(matrix) : -1 : sHalfLongitude %Recorre en horizontal porque primero se resuelve hacia abajo%
        for j = 1 : 1 : sHalfHeight %Recorre hacia abajo%
            if matrix(j,i) ~= 0
                variableToMultiply = -(matrix(j,i))/(matrix(sHalfHeight+1,i));
                if matrix(j,i) + variableToMultiply*matrix(sHalfHeight+1,i) ~= 0 && abs(matrix(j,i) + variableToMultiply*matrix(sHalfHeight+1,i)) > abs(matrix(j,i) - variableToMultiply*matrix(sHalfHeight+1,i)) 
                    variableToMultiply = variableToMultiply * -1;
                end
                for h = i: -1 : 1 %Modifica los valores de esa columna y resuleve los 0 de la matriz%
                    matrix(j,h) = matrix(j,h) + variableToMultiply*matrix(sHalfHeight+1,h);
                end
                results(j) = results(j) + variableToMultiply*results(sHalfHeight+1);
            end 
        end
        sHalfHeight = sHalfHeight - 1;
        sHalfLongitude = sHalfLongitude + 1;
    end

    position = 1;
    fResults = zeros(1,length(results));


    for i = 1: 1:length(matrix)

        for j = 1: 1:length(matrix)
            if j==position
                fResults(position) = results(i)/matrix(i,j);
            end
        end
        position = position + 1;
    end

    xx = fResults;
end
