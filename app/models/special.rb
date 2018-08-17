class Special < ActiveRecord::Base
  has_many :comedian
  validates :name, presence: true
end
