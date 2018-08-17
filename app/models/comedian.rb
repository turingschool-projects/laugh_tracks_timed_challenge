class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true

  def self.total_specials
    sum(:play_count)
  end
  
  def self.average_age
    average(:age)
  end
end
