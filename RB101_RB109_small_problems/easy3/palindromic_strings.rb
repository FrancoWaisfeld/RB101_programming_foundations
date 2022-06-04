def palindrome?(string_or_array)
 string_or_array == string_or_array.reverse
end

p palindrome?([1, 2, 2, 1])

p palindrome?("aabbaabbaa")
