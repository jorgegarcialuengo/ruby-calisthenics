class Dessert

  def initialize(name, calories)
    # your code here
	@name = name
	@calories = calories
  end

	attr_reader :name
	attr_writer :name
		
	attr_reader :calories
	attr_writer :calories

  def healthy?
    # your code here
	self.calories < 200 ? true : false
  end

  def delicious?
    # your code here
	true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
	@flavor = flavor
  end

	attr_reader :flavor
	attr_writer :flavor

	def calories
		5
	end

	def name 
		@flavor + " jelly beans"
	end

	def delicious?
		self.flavor == 'licorice' ? false : true
	end

end
