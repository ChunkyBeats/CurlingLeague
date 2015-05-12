class CreateTeams < ActiveRecord::Migration
  def change
    create_table(:teams) do |t|
      t.column(:team_name, :string)
      t.column(:coordinator_id, :integer)
    end
  end
end
