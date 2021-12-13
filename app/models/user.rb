class User < ApplicationRecord
    has_one :profile, :dependent => :destroy

    belongs_to :city

    validates :email, :username, presence: true, uniqueness: true
    validates :pin, length: {minimum: 11, maximum: 11}, presence: true, uniqueness: true
end
