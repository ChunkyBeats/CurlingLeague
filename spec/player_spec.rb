require('spec_helper')

describe(Player) do

  describe('#team') do
    it('return the team of a player') do
      team = Team.create(team_name: "The Big Bugs")
      player = Player.create( player_name: "Charlie", team_id: team.id())
      expect(player.team()).to(eq(team))
    end
  end
  
end
