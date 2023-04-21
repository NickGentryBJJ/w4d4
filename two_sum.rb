require "byebug"
def bad_two_sum?(arr, target_sum)
    i = 0 
    while i < arr.length 
    j = i + 1
        while j < arr.length
            return true if arr[i] + arr[j] == target_sum
            j += 1
        end
        i += 1
    end
    false  
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

# i want to say n^2 because of the nested loops 


def okay_two_sum?(arr, target)
    sorted = arr.sort
    i = 0
    j = -1
    curr_sum = nil
    # debugger
    until arr[i] == arr[j] || curr_sum == target  
        curr_sum = arr[i] + arr[j] 
        if curr_sum == target 
            return true 
        elsif curr_sum > target 
            j += -1 
        elsif 
            curr_sum < target 
            i += 1 
        end
    end
    false 
end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 10) # => should be false
# p okay_two_sum?(arr, 6) # => should be true

# time complexity is n(log)n because of the sort in the beginning
# the sort dominates the until loop.

def two_sum?(arr, target)
    hash = Hash.new(false)
    arr.each do |ele|
        hash[ele] = true 
        if hash.has_key?(target - ele)
            return true 
        end
    end
    false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
