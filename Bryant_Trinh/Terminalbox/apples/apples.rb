class AppleTree
	attr_accessor :age
	attr_reader :height, :apple_count, :pick_apples
	def initialize age
		@age= age
		@height = height
		@apple_count= 0
	end
	def apple_count
        if @age < 10
            if @age > 3
                return (@age - 3) * 2
            end
        end
        0
    end
    def height
    	@height= age*1.5
    end
	def year_gone_by
		@age += 1
		@height=height
		@apple_count = apple_count
	end
	def pick_apples
		@apple_count = 0
	end
end


