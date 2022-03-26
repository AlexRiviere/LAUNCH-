=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
initial thoughts/questions
Post-problem questions
what you liked from 2 other student's solutions
- used && to  make sure it was an anagram and that it wasnt the subject
- 
=end

class Anagram
  
  attr_reader :subject
  
  def initialize(subject)
    @subject = subject
  end
  
  def match(arr)
    arr.select { |word| same_word?(word) ? false : anagram?(word) }
  end
  
  private
  
  def anagram?(word)
    (down_sort(word) == down_sort(subject))
  end
  
  def down_sort(word)
    word.downcase.chars.sort
  end
  
  def same_word?(word)
    word.downcase == subject.downcase
  end
end