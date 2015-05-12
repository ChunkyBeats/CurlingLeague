class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table(:coordinators) do |t|
      t.column(:name, :string)
    end
  end
end
