require 'pry'

class String

  def sentence?
# Define this instance method to return true if the string you are calling it on ends in a period and false if it does not.

# You will need to use the self keyword in the body of this method to refer to the string on which the method is being called. You can use the #end_with? method to determine what the final character in a string is.
    if self.end_with?(".")
      return true
    else return false
    end
  end

  def question?
    # This instance method should use the self keyword to refer to the string on which it is being called. This method should return true if a string ends with a question mark and false if it does not.
    if self.end_with?("?")
      return true
    else return false
    end
  end

  def exclamation?
    # This instance method should use the self keyword to refer to the string on which it is being called. This method should return true if a string ends with an exclamation mark and false if it does not.
    if self.end_with?("!")
      return true
    else return false
    end


  end

  def count_sentences
    self.split(/[.?!]/).reject {|string| string.empty?}.count
  end
end