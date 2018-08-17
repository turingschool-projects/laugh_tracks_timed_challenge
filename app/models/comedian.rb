class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true
  
  def average_age 
    comedians.average(:age)
  end 
end
