class Menu < ApplicationRecord
	validates :menu, presence: true
	validates :restaurant, presence: true
end
