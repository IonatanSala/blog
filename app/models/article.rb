class Article < ActiveRecord::Base
	# relationships
	belongs_to :user

	# validation for our title
	validates :title, presence: true, length: { minimum: 3, maximum: 50 }

	# validation for our description
	validates :description, presence: true, length: { minimum: 10, maximum: 300 }

	validates :user_id, presence: true
end