class RpsController < ApplicationController


def play
	
end

def get_all_plays
	[:rock, :paper, :scissors]
end 

def get_play
	get_all_plays[rand(3)-1]
end 

def result

@choice = params[:choice]
@play = get_play.to_s
@result = ""
	if @choice == @play
		@result = "It's a tie"
	elsif @choice == get_all_plays[0].to_s && @play == get_all_plays[1].to_s
		@result = "You lose!" 
	elsif  @choice == get_all_plays[1].to_s && @play == get_all_plays[2].to_s
		@result = "You lose!" 
	elsif @choice == get_all_plays[2].to_s && @play == get_all_plays[0].to_s
		@result = "You lose!" 
	else 
		@result = "You won!!!!"
	end
end

end
