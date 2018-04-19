class Interaction < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project

  def location
    [self.lat, self.long]
  end
end
