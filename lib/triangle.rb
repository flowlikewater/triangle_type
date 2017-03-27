require('pry')
class Triangle

  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:type_of_triangle?) do
    is_a_triangle = false
    if @side1+@side2 <= @side3 && @side2+@side3 >= @side1 && @side1+@side3 >= @side2
      is_a_triangle=false
        return "not a triangle"
    elsif @side2+@side3 <= @side1 && @side1+@side3 >= @side2 && @side1+@side2 >= @side3
      is_a_triangle=false
        return "not a triangle"
    elsif @side3+@side1 <= @side2 && @side2+@side3 >= @side1 && @side1+@side2 >= @side3
      is_a_triangle=false
        return "not a triangle"
    else
      is_a_triangle=true
    end
    if (is_a_triangle == true) && (@side1==@side2 && @side2==@side3)
      "equilateral"
    elsif (is_a_triangle == true) && (@side1==@side2 && @side2!=@side3 || @side1==@side3 && @side2!=@side1 || @side2==@side3 && @side1!=@side3)
      "isosceles"
    elsif (is_a_triangle == true) && (@side1!=@side2 && @side2!= @side3 && @side3!=@side1)
      "scalene"
    end
  end
end
