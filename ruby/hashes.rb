
puts "Please fill up this fourm"
gets.chomp
post = {

	:date => ""
	:title => ""
	:client_name => ""
	:client_age => ""
	:number_of_children =>
	:home_decor=>
	:body => "What kind of interior decorations would you like?"
}

p post [:date]

puts "Would you like to change anything?"
gets.chomp
if gets.chomp = "y"
p post{''}
print post
else 
	print post 
