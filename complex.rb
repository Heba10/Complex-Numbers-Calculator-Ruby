class ComplexNum
    # getter method
    attr_reader :real, :imag
    # init the variable
    def initialize(real, imag)
		@real = real
		@imag = imag
    end
    # add function
    def +(num)
		real = self.real + num.real
		imag = self.imag + num.imag
		
		puts "(#{self.real} + #{self.imag}i) + (#{num.real} + #{num.imag}i) = #{real} + #{imag}i"
		return ComplexNum.new(real, imag)
	end



end

complex = ComplexNum.new(3, 3)
complex2 = ComplexNum.new(8, 8)

add = complex + complex2




