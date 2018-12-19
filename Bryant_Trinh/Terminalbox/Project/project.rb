class Project 
	attr_accessor :name, :description, :owner
	def initialize (name,description,owner)
		@name=name
		@description=description
		@owner=owner
		#@tasks=[]
	end
	def elevator_pitch
		p "#{@name}, #{@description}, #{@owner}"
	end
	def tasks 
		return @tasks
	end
	def add_tasks tasks
		@tasks = tasks
	end
	def print_tasks
		p "#{@tasks}"
	end

end
project1 = Project.new('Project 1', 'description 1', 'John Doe')
#project1 = Project.new("Card Game", "Make a deck of cards", "John Doe", "shuffle deck")
#puts project1.name
project1.elevator_pitch