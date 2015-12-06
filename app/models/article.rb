class Article < ActiveRecord::Base
	# relationships
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
	# validation for our title
	validates :title, presence: true, length: { minimum: 3, maximum: 50 }

	# validation for our description
	validates :description, presence: true, length: { minimum: 10, maximum: 1000 }

	validates :user_id, presence: true
end