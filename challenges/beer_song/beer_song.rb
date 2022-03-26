=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- generate the lyrics of the beer song
initial thoughts/questions
- class BeerSong
- 2 class methods
  - ::verses
    - takes multiple args (splat) that are integers
    - returns those verses, in the order in which they were passed in 
  - ::lyrics
    - returns the whole song
    
- ::verses
  - from 2- 99 same thing
    - num bottles of beer on the wall, num bottles of beer.
      Take one down and pass it around, (num - 1) bottles of beer on the wall.
    - if its 1
      - give the 1 verse
    - if its 0
      - give the 0 verse
- ::lyrics
  - 0..99, to array, reverse, pass it to the ::verse method
Post-problem questions
what you liked from 2 other student's solutions
- actually made two classes and used collaborator objects
- use an array to store the verses, then join with \n so it doesnt print a last one
- broke up the strings with conditionals
- use downto to go backwards
- break up the strings into lines
=end

class BeerSong
  def self.verses(*verses)
    result = ''
    max = verses.max
    min = verses.min
    (min..max).to_a.reverse.each do |sing_verse| 
      result << verse(sing_verse) 
      unless sing_verse == verses.min
        result << "\n"
      end
    end
    result
  end
  
  def self.verse(current_verse)
    case current_verse
    when 3..99
      <<~LYRICS
      #{current_verse} bottles of beer on the wall, #{current_verse} bottles of beer.
      Take one down and pass it around, #{current_verse - 1} bottles of beer on the wall.
      LYRICS
    when 2
      <<~LYRICS
      #{current_verse} bottles of beer on the wall, #{current_verse} bottles of beer.
      Take one down and pass it around, #{current_verse - 1} bottle of beer on the wall.
      LYRICS
    when 1
      <<~LYRICS
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      LYRICS
    when 0
      <<~LYRICS
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      LYRICS
    end
  end

  def self.lyrics
    all_verses = (0..99).to_a.reverse
    self.verses(*all_verses)
  end
end

# BeerSong.verses(99, 98)
# puts ""

# BeerSong.verse(3)

# BeerSong.lyrics