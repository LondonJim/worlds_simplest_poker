# frozen_string_literal: true

require 'deck'

describe Deck do
  DECK_SIZE = 52

  let(:card) { double :Card }
  let(:card_class) do
    double :CardClass,
           new: card
  end

  describe '#size' do
    it 'returns the number of cards in the deck' do
      deck = described_class.new(card_class)
      expect(deck.size).to eq(DECK_SIZE)
    end
  end

  describe '#remove_card' do
    it 'removes card from deck at index' do
      deck = described_class.new(card_class)
      expect(deck.remove_card(0)).to eq(card)
      expect(deck.size).to eq(DECK_SIZE - 1)
    end
  end

  describe '#reset' do
    it 'recompiles deck' do
      deck = described_class.new(card_class)
      deck.remove_card(0)
      expect(deck.size).to eq(DECK_SIZE - 1)
      deck.reset
      expect(deck.size).to eq(DECK_SIZE)
    end
  end
end
