class Special < ActiveRecord::Base
  validates :name, presence: true

  def self.comedian_specials(comedian_id)
    self.where(comedian_id: comedian_id)
  end
end
