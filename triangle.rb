require 'set'
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
  set = Set[a, b, c]
  arr = [a, b, c]
  for i in set do
    # Sides should be greater than 0
    raise TriangleError unless i > 0
  end
  (-2...arr.size - 2).each do |n|
    raise TriangleError unless (arr[n] + arr[n+1]) > arr[n+2]
  end

  triangle_type = :equilateral
  if set.size == 2
    triangle_type = :isosceles
  elsif set.size == 3
    triangle_type = :scalene
  end
  return triangle_type
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
