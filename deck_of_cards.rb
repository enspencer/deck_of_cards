# they don't inherit! Use some data type to have cards in Deck.

#Deck: attr :cards
# methods draw_card, chaos_orb

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

#make 10 cards
card1 = Card.new('spades', 'queen')
card2 = Card.new('diamonds', 'eight')
card3 = Card.new('clubs', 'four')
card4 = Card.new('diamonds', 'two')
card5 = Card.new('hearts', 'jack')
card6 = Card.new('hearts', 'ace')
card7 = Card.new('spades', 'king')
card8 = Card.new('clubs', 'two')
card9 = Card.new('diamonds', 'ace')
card10 = Card.new('hearts', 'nine')

puts card1.color
puts card2.color
puts card3.color

full_deck = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10]

###


class Deck
	attr_accessor :cards

	def initialize(cards)
		@cards = cards
	end

	def shuffle_deck
		full_deck.shuffle
	end
	end

	def draw_card
		#draws card, returns to deck
	end

	def chaos_orb
		#draws card, removes from deck
	end

end



