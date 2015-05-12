class CreatePlayers < ActiveRecord::Migration
  def change
    create_table(:players) do |t|
      t.column(:player_name, :string)
      t.column(:team_id, :integer)
    end
  end
end
