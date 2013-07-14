class User < ActiveRecord::Base
  require 'bcrypt'

  attr_accessible :name, :email, :password, :password_confirmation, :points, :role
  has_secure_password

  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create
  validates_presence_of :email
  validates :email, :on => :create, :uniqueness => true


  has_many :reservations
  has_many :restaurants, through: :reservations

end
