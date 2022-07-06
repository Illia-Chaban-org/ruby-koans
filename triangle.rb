# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  are_positive_numbers = [a,b,c].all? { |x| x.is_a?(Numeric) && x > 0 }

  unless are_positive_numbers
    fail TriangleError.new('Function accepts only positive numbers')
  end


  sorted1, sorted2, sorted3 = [a,b,c].sort.reverse

  unless sorted1 < sorted2 + sorted3
    fail TriangleError.new("Unable to build a triangle with sides that small")
  end

  if (a == b && b == c) 
    :equilateral
  elsif (a == b || b == c || c == a)
    :isosceles
  else 
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
