class Category < ApplicationRecord
    validates :title, presence:true
    validates_uniqueness_of :title, conditions: -> { where(active: true) }
    validates :description, length: {maximum: 300}, presence:true
    validates :title, format: {with: /\A[a-zA-Z0-9]+\z/, message: "only letters or numbers are allowed!"}

end
