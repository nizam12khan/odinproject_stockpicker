def stock_picker(given_array)
    lowest_index1 = 0
    for i in 1..given_array.length-2
        lowest_index1 = i if given_array[lowest_index1] > given_array[i]
    end
    highest_index1 = lowest_index1+1
    for j in lowest_index1+2..given_array.length-1
        highest_index1 = j if given_array[highest_index1] < given_array[j]
    end

    highest_index2 = given_array.length-1
    k =  highest_index2-1
    while k > 0
        highest_index2 = k if given_array[highest_index2] < given_array[k]
        k -=1
    end
    lowest_index2 = highest_index2-1
    l = lowest_index2-1    
    while l>=0
        lowest_index2 = l if given_array[lowest_index2] > given_array[l]
        l -=1
    end
    if given_array[highest_index1] - given_array[lowest_index1] > given_array[highest_index2] - given_array[lowest_index2] 
        [lowest_index1, highest_index1] 
    else
        [lowest_index2, highest_index2]
    end
end