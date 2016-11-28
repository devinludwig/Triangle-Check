require('rspec')
require('pry')
require('triangle')

describe('Triangle') do
  describe('#type?') do
    it("return 'equilateral' when all the sides are equal") do
      test_triangle = Triangle.new(15,15,15)
      expect(test_triangle.type?()).to(eq('equilateral'))
    end

    it("returns 'isosceles' when any two sides are equal") do
      test_triangle = Triangle.new(33,33,23)
      expect(test_triangle.type?()).to(eq('isosceles'))
    end

    it("returns 'not a triangle' when it is not a triangle") do
      test_triangle = Triangle.new(1,2,5)
      expect(test_triangle.type?()).to(eq('not a triangle'))
    end

    it("returns 'scalene' when no sides are equal") do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.type?()).to(eq('scalene'))
    end
  end
end
