require("minitest/autorun")
require_relative("../card")
require_relative("../testing_task_2")

class TestCardGame < MiniTest::Test

  def setup()
    @CardGame = CardGame.new()
    @card_1 = Card.new("HEARTS", 1)
    @card_4 = Card.new("DIAMONDS", 4)
    @card_8 = Card.new("CLUBS", 8)
    @cards = [@card_1, @card_4, @card_8]
  end

  def test_check_for_ace__ace()
    assert_equal(true, @CardGame.check_for_ace(@card_1))
  end

  def test_check_for_ace__not_ace()
    assert_equal(false, @CardGame.check_for_ace(@card_8))
  end

  def test_highest_card__card1_higher()
    assert_equal(@card_8.value, @CardGame.highest_card(@card_8, @card_4))
  end

  def test_highest_card__card2_higher()
    assert_equal(@card_8.value, @CardGame.highest_card(@card_1, @card_8))
  end

  def test_check_cards_total()
    assert_equal("You have a total of 13", @CardGame.cards_total(@cards))
  end

end
