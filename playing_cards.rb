def playing_card(input)
  suits = {"S" => "spades", "H" => "hearts", "D" => "diamonds", "C" => "clubs"}
  values = {"2" => 0, "3" => 1, "4" => 2, "5" => 3, "6" => 4, "7" => 5, "8" => 6, "9" => 7, "T" => 8,
    "J" => 9, "Q" => 10, "K" => 11, "A" => 12}
  card = input.to_s
  card_suit = suits[card[0]]
  card_value = values[card[1]]
  $card_name = [card_suit, card_value]
end

def sum_card_rank(list_of_cards)
  sum = 0
  list_of_cards.each do |x|
    playing_card(x)
    sum += $card_name[1]
  end
  puts sum
end

playing_card("HT")

list_of_cards = ["HT", "D5", "CA"]
sum_card_rank(list_of_cards)