# frozen_string_literal: true

require 'deck'

describe Deck do
  DECK_SIZE = 52

  describe '#size' do
    it 'returns the number of cards in the deck' do
      deck = described_class.new
      expect(deck.size).to eq(DECK_SIZE)
    end
  end

  describe '#remove_card' do
   it 'removes card from deck at index' do
    deck = described_class.new
    expect(deck.remove_card(0)).to eq(1)
    expect(deck.size).to eq(DECK_SIZE - 1)
   end
  end
end