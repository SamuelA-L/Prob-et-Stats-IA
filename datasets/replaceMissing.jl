# fonction permettant de compter le nombre de valeurs du type "missing" dans une ligne
function countMissing(line)
    count=0
    ind = 0
    for i=1:length(line)
        if (ismissing(line[i]))
            count += 1
            ind = i
        end
    end
    return count, ind
end

# fonction permettant de calculer le moyenne des valeurs d'une ligne peu importe le nombre de "missing"
function meanLine(line)
    values = []
    for i=1:length(line)
        if (!ismissing(line[i]))
            append!(values,line[i])
        end
    end
    return mean(values)
end

# fonction permettant de remplacer toutes les valeurs "missing" d'une ligne avec la valeur donnée en parametre
function replaceMissing(line,value)
    n = length(line)
    for i=1:n
        if (ismissing(line[i]))
            line[i] = value
        end
    end
end
