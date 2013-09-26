#
#
#

class Card
	attr_accessor :suit, :value

	def initialize(suit, value)
		@suit = suit
		@value = value
	end

	def color
		if @suit == 'hearts' || @suit == 'diamonds'
			"red"
		else
			"black"
		end
	end
end


class Deck
	attr_accessor :cards

	def initialize
		@cards = []
		@cards << Card.new('spades', 'queen')
		@cards << Card.new('diamonds', 'eight')
		@cards << Card.new('clubs', 'four')
		@cards << Card.new('diamonds', 'two')
		@cards << Card.new('hearts', 'jack')
		@cards << Card.new('hearts', 'ace')
		@cards << Card.new('spades', 'king')
		@cards << Card.new('clubs', 'two')
		@cards << Card.new('diamonds', 'ace')
		@cards << Card.new('hearts', 'nine')
		shuffle_deck
	end

	def shuffle_deck
		@cards.shuffle!
	end

	def draw_card
		#draws card, returns to deck
		card = @cards[rand(@cards.length)]
		return card
	end

	def chaos_orb
		#draws card, removes from deck
		card = @cards[rand(@cards.length)]
		@cards.delete(card)
		return card
	end

end

deck = Deck.new

puts deck.draw_card.value
