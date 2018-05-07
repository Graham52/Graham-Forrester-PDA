# require_relative('card.rb')  Not required
# class CardGame
#
#
#   def checkforAce(card)  should say check_for_ace
#     if card.value = 1   should say ==
#       return true
#     else
#       return false
#     end
#   end
#
#   dif highest_card(card1 card2)  should say def also parameters should be split with a comma
#   if card1.value > card2.value
#     return card.name    should say card1.value
#   else
#     card2         should say return card2.value
#   end
# end
# end       end in the wrong place
#
# def self.cards_total(cards)      self. should be removed
#   total           should say total = 0
#   for card in cards
#     total += card.value
#     return "You have a total of" + total   this line should be outside the loop ans a space added at end of sting
#   end                                       also the total should be converted to a string
# end         another end statement should be added.

class CardGame

  def check_for_ace(card)
    if card.value == 1
      return true
    else
      return false
    end
  end

  def highest_card(card1, card2)
    if card1.value > card2.value
      return card1.value
    else
      return card2.value
    end
  end

  def cards_total(cards)
    total = 0
    for card in cards
      total += card.value
    end

    return "You have a total of " + total.to_s
  end
end
