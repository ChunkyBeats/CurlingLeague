ENV['RACK_ENV'] = 'test'

require('rspec')
require('pry')
require('sinatra/activerecord')
require('player')
require('team')
require('coordinator')

RSpec.configure do |config|
  config.after(:each) do
    Player.all().each do |player|
      player.destroy()
    end
    Team.all().each do |team|
      team.destroy()
    end
    Coordinator.all().each do |coordinator|
      coordinator.destroy()
    end
  end
end
