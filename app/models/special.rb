class Special < ActiveRecord::Base
  validates :name, presence: true

  def self.count(comedian_id)
    specials = self.where(comedian_id: comedian_id)
    specials.count
  end
end
