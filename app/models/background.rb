class Background < ActiveRecord::Base
  attr_accessible :file
  has_attached_file :file
  has_many :cards
end
