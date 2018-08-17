class Comedian < ActiveRecord::Base
  has_many :special

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    ave(comedians.all[:age])
  end

end
