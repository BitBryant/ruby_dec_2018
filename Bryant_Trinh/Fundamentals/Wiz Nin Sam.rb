class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end
	def attack (target)
		if target.class.ancestors.include?(Human)
			@health -= 10
			true
			self
		end
		else
			false
			self
		end
	end
end

class Wizard < Human
	def initialize 
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health+=10
		self
	end
	def fireball (target)
		target.health-=20
		self
	end
end

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end
	def steal (target)
		self.attack(target)
		@health+=10
		self
	end
	def get_away
		@health-=15
		self
	end
end

class Samurai < Human
	@@count = 0
	def initialize
		super
		@health = 200
		@@count+=1
	end
	def death_blow (target)
		self.attack(target)
		target.health=0
		self
	end
	def meditate
		@health= 200
		self
	end
	def how_many
		p @@count
		self
	end
end