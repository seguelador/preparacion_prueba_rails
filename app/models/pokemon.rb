class Pokemon < ApplicationRecord
	has_many :users, through: :catches
	has_many :catches
end
