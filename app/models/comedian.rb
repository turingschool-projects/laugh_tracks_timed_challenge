class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    Comedian.average("age").to_f.round
  end

  def self.find_by(age)
    comedians = database.execute("SELECT * FROM items
                              WHERE description LIKE ?;", "%#{age}%")
    comedians.map do |comedian|
      Comedian.new(comedian)
    end
  end
end
