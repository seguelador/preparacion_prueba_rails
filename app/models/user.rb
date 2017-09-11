class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {guest: 0, basic: 1, admin: 2}

  has_many :pokemons, through: :catches
  has_many :catches
end
