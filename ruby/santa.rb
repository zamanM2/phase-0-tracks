class Santa
	def speak
		print "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies ( cookie)
		print "That was a good #{cookie}"
	end

	def initialize(gender,ethnicity,reindeer_ranking,age=0)
		print "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = age
	
	
	end

end