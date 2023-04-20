def anagram?(str_1, str_2)
    first_string = str_1.split("").permutation.to_a
    if first_string.include?(str_2.split(""))
        return true 
    end
    false

    
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true
# p anagram?("marcelo garcia", "eddie bravo") #=> false


# time complexity on this problem is n! since permutation is an factorial time.



def second_anagram?(str_1, str_2)
    str_1.each_char do |char|
        found_idx = str_2.index(char)
            if found_idx
                str_2[found_idx] = ""
            else
                return false 
            end
    end 
    true
end

# p second_anagram?("elvis", "lives")    #=> true
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("marcelo garcia", "eddie bravo") #=> false
# p second_anagram?("racecar driver", "drivre carrace") #=> true

# the time complexity of this solution will be n^2  because of the 
# iteration through str_1 and the iteration through str_2 (.index) in each 
# pass of the first loop.


def third_anagram?(str_1, str_2)
    str_1.split("").sort == str_2.split("").sort 
end

# p third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("marcelo garcia", "eddie bravo") #=> false
# p third_anagram?("racecar driver", "drivre carrace") #=> true

#time complexity would actually be n(log)n because of the sort method..
#split is n & sort is n log n so this solution would read:
#  (n + n(log)n + n + n(log)n) 
# simplified to: n(log)n

 
 
def fourth_anagram?(str_1, str_2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)
    str_1.each_char do |char|
        hash_1[char] += 1
    end
    str_2.each_char do |char|
        hash_2[char] += 1
    end
    hash_1 == hash_2
end


# time complexity will be 2n (or just n ) because it iterates through 
# each string only one time each. 