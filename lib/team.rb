class Team < ActiveRecord::Base
  belongs_to(:coordinator)
  has_many(:players)
end
