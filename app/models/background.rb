class Background < ActiveRecord::Base
  has_attached_file :file
  has_many :cards
end
