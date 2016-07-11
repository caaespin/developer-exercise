class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #Use regex conditions to get the string that is 5 or more characters. Then ask if it's first character is
    #upper case or lower case.
    return str.gsub(/\w{5,}/){|w| /[[:upper:]]/.match(w[0])? "Marklar" : "marklar"}
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    #return 0 if nth <= 1
    sum = 0
    #i = nth
    #f1 and f2 are the initial fibonacci numbers
    f1, f2 = 0, 1
    while nth > 0 do
      if f2%2 == 0 then
        sum += f2
      end  
      nth -= 1
      f1, f2 = f2, f1 + f2
    end
    return sum
  end
end