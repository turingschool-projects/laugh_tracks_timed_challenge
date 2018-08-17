class Special < ActiveRecord::Base
  validates :name, presence: true
  has_many :comedians
end
