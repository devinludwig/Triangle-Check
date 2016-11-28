require('rspec')
require('pry')
require('triangle')

describe('Triangle') do
  describe('#type?') do
    it("return 'equilateral' when all the sides are equal") do
      test_triangle = Triangle.new(15,15,15)
      expect(test_triangle.type?()).to(eq('equilateral'))
    end
  end
end