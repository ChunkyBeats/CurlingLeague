require('sinatra/activerecord')
require('./lib/team')
require('./lib/player')
require('./lib/coordinator')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/teams/add') do
  @teams = Team.all
  erb(:teams)
end

post('/teams/add') do
  name = params.fetch("team_name")
  Team.create(team_name: name)
  @teams = Team.all
  erb(:teams)
end

get('/teams/:id') do
  @team = Team.find(params.fetch("id").to_i)
  @players = @team.players()
  erb(:team)
end

post('/players/add') do
  team_id = params.fetch("team_id").to_i
  new_player = Player.create({:player_name => params.fetch("player_name"), :team_id => team_id})
  @team = Team.find(team_id)
  @players = @team.players()
  erb(:team)
end

get('/player/:id') do
  @player = Player.find(params.fetch("id").to_i)
  erb(:player)
end

patch('/players/:id') do
  @player = Player.find(params.fetch("id").to_i)
  @player.update(player_name: params.fetch("player_name"))
  erb(:player)
end

delete('/player/delete') do
  player = Player.find(params.fetch("player_id").to_i)
  player.delete()
  erb(:index)
end
