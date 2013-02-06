class PokerController < ApplicationController



def pick_a_card
	rand(5)-1
end

def deal
a = [:s,:h,:c,:d]
b = [2,3,4,5,6,7,8,9,:j,:q,:k,1]
c = a.product(b)
@plays = c.sample(5)
end



end
