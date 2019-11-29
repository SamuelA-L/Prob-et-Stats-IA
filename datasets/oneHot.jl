function oneHot(df_grouped)
    oneHotMatrix = []
    dateVector = []
    oneHotDF = DataFrame()
    for df in df_grouped
        vector = zeros(5)
        for row = eachrow(df)
            i = findfirst(x -> x==row[:NO_OUVRAGE], OUVRAGES)
            vector[i] = row[:SURVERSE]
        end
        push!(dateVector, df[:DATE][1])
        push!(oneHotMatrix, vector)
    end
    oneHotDF.one_hot = oneHotMatrix
    oneHotDF.date = dateVector
    return oneHotDF
end
