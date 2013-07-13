class User < ActiveRecord::Base
  require 'bcrypt'

  attr_accessible :email, :password_digest, :points, :role
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create

  has_many :reservations
  has_many :restaurants, through: :reservations



end
