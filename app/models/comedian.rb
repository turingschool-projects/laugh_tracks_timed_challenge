class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.by_age(age)
    self.where(age: age)
  end

end
