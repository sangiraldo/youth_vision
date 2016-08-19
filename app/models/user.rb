class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  validates :first_name , presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: {case_sensitive: false ,message: "el usuario ya esta registrado"}
end
