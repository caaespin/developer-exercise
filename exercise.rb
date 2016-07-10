class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #mStrgs = str.scan(/[\w'-]+|[[:punct:]]+/)
    mStrgs = str.split
    for mWord in mStrgs
      if mWord.length > 4 then
        #print mWord 
        #print mWord.length
        mWord = "marklar"
      end  
      if /[[:upper:]]/.match(mWord[0]) then
        mWord = "Marklar"
      end  
    end
    mStrgs.map!{
      |mWord| 
      if mWord.length > 4 then
        print mWord 
        print mWord.length

        if /[[:upper:]]/.match(mWord[0]) then
          mWord.gsub!(/[[A-Z]+[a-z]]/, "Marklar")
        else
          mWord.gsub!(/[[A-Z]+[a-z]]/, "marklar")
        end 
      else
        mWord = mWord  
      end  
      
    }
    return mStrgs.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    #return 0 if nth <= 1
    sum = 0
    i = nth
    f1, f2 = 0, 1
    while i > 0 do
      if f2%2 == 0 then
        sum += f2
      end  
      i -= 1
      f1, f2 = f2, f1 + f2
    end
    return sum
  end

end