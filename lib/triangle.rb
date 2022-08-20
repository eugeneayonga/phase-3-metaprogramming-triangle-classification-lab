class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end


triangle_one = Triangle.new(3, 3, 3)
triangle_two = Triangle.new(3, 3, 1.5)
triangle_three = Triangle.new(3, 4, 5)
puts triangle_one.kind
puts triangle_two.kind
puts triangle_three.kind
