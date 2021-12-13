class Project < ApplicationRecord
    belongs_to :category
    KNOWN_FORMATS =%w[plain markdown].freeze
    validates :title, :format, :description, presence: true, uniqueness: true
    validates :title, length: {minimum: 5, maximum:150}, presence: true
    validates :format, length: {minimum: 2, maximum: 10}, inclusion: {in:KNOWN_FORMATS, message: "%{value}
    is not included in #{KNOWN_FORMATS}"}, presence:true

    validate :title_first_five_letters

    validates_with DescriptionValidator

    def title_first_five_letters
        if title.present? && title.first(5) =~ /\d{5}/
            errors.add(:title, "First 5 letters can't be numbers")
        end
    end
    #has_one :first_task, {class_name:'Task',foreign_key:'project_id'}
    #has_many :tasks
end
