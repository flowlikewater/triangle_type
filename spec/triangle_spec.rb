require('rspec')
require('triangle')

describe("no_triangle?") do
  it('returns false if it is a triangle - any sum of two sides must be larger than the third side') do
    test_triangle = Triangle.new(10,10,31)
    expect(test_triangle.type_of_triangle?()).to(eq("not a triangle"))
  end
end

describe('triangle') do
  describe("equilateral?") do
    it('returns true if it is an equilateral triangle') do
      test_triangle = Triangle.new(30,30,30)
      expect(test_triangle.type_of_triangle?()).to(eq("equilateral"))
    end
  end

  describe("isosceles?") do
    it('returns true if it is an isosceles triangle - only 2 sides are equal') do
      test_triangle = Triangle.new(30,30,20)
      expect(test_triangle.type_of_triangle?()).to(eq("isosceles"))
    end
  end

  describe("scalene?") do
    it('returns true if it is a scalene triangle - no sides are equal') do
      test_triangle = Triangle.new(10,29,20)
      expect(test_triangle.type_of_triangle?()).to(eq("scalene"))
    end
  end


end
