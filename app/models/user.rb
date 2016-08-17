class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #Relaciones entre los modelos de la base de datos

  has_many :forums #Un usuario aportar tants foros como el quiera
  has_many :comments #Un usuario puede comentar cuantas veces el quiera

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name , presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: {case_sensitive: false ,message: "el usuario ya esta registrado"}
end
