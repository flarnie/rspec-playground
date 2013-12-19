require 'rspec'
require 'game'

describe Game do
  subject (:game) { Game.new }
  
  describe '#render' do
    it 'should print foo bar baz to the screen' do
      $stdout.should_receive(:puts).with("foo bar baz")
      game.render
    end
  end
  
end