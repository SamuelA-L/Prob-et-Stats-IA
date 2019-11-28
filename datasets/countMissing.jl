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
