def my_min(array)
    smaller = false 
    
    i = 0 
    while i < array.length - 1
        j = i + 1
        while j < array.length 
            if array[i] < array[j]
                smaller = true 
            else
                smaller = false 
                break
            end
             
            j += 1
        end
        return array[i] if smaller == true 
        i += 1
    end  
end
# time complexity of 'my_min' is n^2 because of the nested while loops...

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_min_v_two(array)
    min = array[0]
    array.each do |ele|
        if ele < min 
            min = ele 
        end
    end
    min
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_v_two(list)  # =>  -5

# time complexity of 'my_min_v_two' would be 'n' because the time 
# it takes depends on the length of the array we are checking..

def largest_contiguous_subsum(array)
    subsets = [] 
    i = 0 
    while i < array.length 
        j = i + 1 
        while j < array.length + 1 
            subsets << array[i...j]
            j += 1 
        end
        i += 1 
    end
    large_sums = []
    subsets.each do |set|
        large_sums << set.sum 
    end
    sorted = large_sums.sort 
    return sorted[-1]
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# time complexity of largest_contiguous_subsum would be n^2 because 
# of the nested while loop.  The second loop in the method is 
# negligable because it is dominated by the nested loop.