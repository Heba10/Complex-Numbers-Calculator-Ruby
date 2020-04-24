class ComplexNum
    # Class Variables
    @@countAdd = 0
	@@countMult = 0
    # getter method
    attr_reader :real, :imag
    # init the variable
    def initialize(real, imag)
		@real = real
		@imag = imag
    end
    # add function
    def +(num)
        @@countAdd+= 1
		real = self.real + num.real
		imag = self.imag + num.imag
		
        puts "(#{self.real} + #{self.imag}i) + (#{num.real} + #{num.imag}i) = #{real} + #{imag}i \n"
        puts "************************************************************************************"
        
		return ComplexNum.new(real, imag)
    end
    # ///////////////////////////////////////////////////////////////////////////////////////////////
    # mult function
    def *(num)
        @@countMult += 1
		real = (self.real * num.real) - (self.imag * num.imag)
        imag = (self.real * num.imag) + (self.imag * num.real)
   
	
        puts "(#{self.real} + #{self.imag}i) * (#{num.real} + #{num.imag}i) = #{real} + #{imag}i \n"
     	

		return ComplexNum.new(real, imag)
	end
    #////////////////////////////////////////////////////////////////////////////////////////////////
    # bulk_add
    def self.bulk_add(nums)
		complex_num = nums[0]
        i = 1
        puts "**************************************bulk_add**********************************************"
        puts "steps of add array complex number\n"
       
			while i < nums.count
				complex_num += nums[i]
				i += 1
			end 		

			puts "the add bulk ===>>> (#{complex_num.real} + #{complex_num.imag}i)"

			return complex_num
	end


	def self.bulk_multiply(nums)
		
        complex_num = nums[0]

                        i = 1
            puts "***************************************bulk_multiply*********************************************"
            puts "steps of Multiply array complex number\n"
                        while i < nums.count
                            complex_num *= nums[i]
                                i += 1
                        end

                        puts "the mult bulk ===>>> (#{complex_num.real} + #{complex_num.imag}i)"

                        return complex_num
               

    end
    
    def get_stats
        puts "*************************************get_stats***********************************************"
        puts " count of multiply  #{@@countMult} "
        puts " count of add  #{@@countAdd}"
	end





end

complex1 = ComplexNum.new(3, 3)
complex2 = ComplexNum.new(8, 8)
complex3 = ComplexNum.new(3, 3)


complex_array = [complex1, complex2, complex3]

add1 = complex1 + complex2

mult = complex1 * complex2

ComplexNum.bulk_add(complex_array)
ComplexNum.bulk_multiply(complex_array)
complex1.get_stats



