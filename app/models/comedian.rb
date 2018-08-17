class Comedian < ActiveRecord::Base

  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

  def self.avg_age
    Comedian.average(:age)
  end
end
