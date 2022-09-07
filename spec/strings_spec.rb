require 'spec_helper'
require_relative '../strings/strings'

RSpec.describe 'substrings' do
  describe 'caesar_cipher_exercise' do
    dictionary = %w[below down go going horn how howdy it i low own part partner
                    sit]

    it 'works with single words' do
      word = 'below'
      result = { 'below' => 1, 'low' => 1 }

      expect(substrings(word, dictionary)).to eq(result)
    end

    it 'works with mutiple words' do
      words = "Howdy partner, sit down! How's it going?"
      result = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1,
                  'partner' => 1, 'sit' => 1 }

      expect(substrings(words, dictionary)).to eq(result)
    end
  end
end
