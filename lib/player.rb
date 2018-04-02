class Player
  attr_reader :hand

  def receive_hand(hand)
    @hand = hand
  end
end
