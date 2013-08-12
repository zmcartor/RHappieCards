class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cards
  has_many :callbacks, through: :cards
  has_many :roles

  def admin?
    is_in_role('admin')
  end

  def is_in_role(role)
    self.roles.where(name: role).any? || self.roles.select { |r| r.name == role }.any?
  end


end