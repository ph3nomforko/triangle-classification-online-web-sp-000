class Triangle

  def initialize(s1, s2, s3)
    if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
      raise TriangleError
    end

    if s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    end

    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 == @s2 && @s2 == @s3
      return :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "You must give a valid triangle."
    end
  end

end
