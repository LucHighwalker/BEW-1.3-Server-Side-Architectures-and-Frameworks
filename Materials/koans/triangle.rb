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
  # Beautiful answer from stack overflow, not my own :(
  raise TriangleError if [a,b,c].min <= 0
  x, y, z = [a,b,c].sort
  raise TriangleError if x + y <= z
  [:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)
  # if a > 0 and b > 0 and c > 0
  #   if a == b && a == c
  #     return :equilateral
  #   elsif a != b && a != c && b != c
  #     return :scalene
  #   elsif (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  #     return :isosceles
  #   end
  # end
  # raise TriangleError, "Illegal triangle"
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
