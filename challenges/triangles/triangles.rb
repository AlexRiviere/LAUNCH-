=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- write a program
- the program will determine if a triangle is equilateral, isosceles, or scalene
- equilateral triangle has all equal sides
- isosceles has two sides of the same length
- scalene has no sides the same length, or all sides different lengths
- the triangle is invalid unless all sides are > 0 in length, the sum of any two sides 
   is greater than the length of the third side
notes

initial thoughts/questions
- i guess this is more than a method, its a program
- how are the inputs coming in? user/test cases?
- do i need to make classes for this?
- need to test for validity before anything else
- I'm given the test cases in a minitest format, lets make a folder for this
- I guess we can use the test cases to drive the program development
- some tests are skipped, maybe i will unskip them one by one as i make the classes/methods

- looks like its one class

  - initialize takes 3 args, all positive integers/floats
    - argument error is raised if the triangle sides do not make a valid triangle

  - #kind - returns a string representing the type of triangle
  
questions in post
- is that the way i should have raised the argument error?
- should i have included the scalene? method
- 
  
=end

class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise ArgumentError unless valid_triangle?
  end
  
  def kind
    if equilateral?
      'equilateral'
    elsif isosceles?
      'isosceles'
    else
      'scalene'
    end
  end
  
  private
  
  attr_reader :sides
  
  def equilateral?
    sides[0] == sides[1] && sides[1] == sides[2]
  end
  
  def isosceles?
    sides[0] == sides[1] || sides[1] == sides[2]
  end
  
  def valid_triangle?
    sides[0..1].sum > sides[2] && sides.all?{|side| side > 0}
  end
end