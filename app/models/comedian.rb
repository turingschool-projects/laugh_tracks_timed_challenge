class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

  def self.comedians_average_age
   average(:age)
  end

  def self.total_tv_specials
   sum(:specials)
  end

end


