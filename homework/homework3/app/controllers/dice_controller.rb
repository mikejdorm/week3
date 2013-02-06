class DiceController < ApplicationController

def get_roll
	rand(5)+1
end

def first_roll
	@dice_one = get_roll
	@dice_two = get_roll
	@points = @dice_one + @dice_two
	if @points == 11 ||
	   @points == 7
	   @message = "You won!!!!!"
	   @link = "/dice"
	else
		@message = "Please roll again. "
		@link = "/dice/roll"
	end
end

def roll
	@points = params[:points]			
	@dice_one = get_roll
	@dice_two = get_roll
	@this_roll = @dice_one + @dice_two
	#if @points == Nil || @points == 0
#		@points == @this_roll
#	end
end

def play

end

end
