require('spec_helper')

describe(Team) do

  describe('#coordinator') do
    it('returns the coordinator of a team') do
      coordinator = Coordinator.create(name: "Curly Sue")
      team = Team.create(team_name: "The Broom Boopers", coordinator_id: coordinator.id)
      expect(team.coordinator).to(eq(coordinator))
    end
  end

  describe('#players') do
    it('returns players on a team') do
      team = Team.create({:team_name => "The Fruit Flies"})
      frank = Player.create({:player_name => "Frank", :team_id => team.id()})
      fred = Player.create({:player_name => "Fred", :team_id => team.id()})
      fiona = Player.create({:player_name => "Fiona", :team_id => team.id()})
      expect(team.players).to(eq([frank, fred, fiona]))
    end
  end

end
