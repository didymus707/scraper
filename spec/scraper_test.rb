require './lib/scraper'

Rspec.describe Scraper do
  describe Game do
    context 'Game' do
      it '#switch_players' do
        game = Game.new('player1', 'player2', 'yes')
        expect(game.switch_players).to eql('player2')
      end
    end
  end
end
