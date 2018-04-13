class Interaction < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project
end
