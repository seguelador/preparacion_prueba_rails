class Pokemon < ApplicationRecord
	has_many :catches
	has_many :users, through: :catches
end
