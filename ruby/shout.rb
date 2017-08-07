=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(word)
  	word+ "!" + ":]"
end

end


#driver ********************
Shout.yell_angrily(hate)
=end

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(word)
  	word+ "!" + ":]"
  end





class Old_man
	include shout
end

class Auctioner
	include shout
end

Old_man = Old_man.new
Old_man.yell_angrily(QUIET)

Auctioner = Auctioner.new
Auctioner.yelling_happily(ONEDOLLER)
