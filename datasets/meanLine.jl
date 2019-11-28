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

