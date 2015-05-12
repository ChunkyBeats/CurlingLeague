require('spec_helper')

describe(Coordinator) do
  describe('#team') do
    it('returns the team assigned to a coordinator') do
      coordinator = Coordinator.create(name: "Curly Sue")
      team = Team.create(team_name: "The Broom Boopers", coordinator_id: coordinator.id)
      expect(coordinator.team).to(eq(team))
    end
  end
end
