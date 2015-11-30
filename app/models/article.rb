class Article < ActiveRecord::Base
	# validation for our articles table in database
	validates :title, presence: true, length: { minimum: 3, maximum: 50 }
	validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end