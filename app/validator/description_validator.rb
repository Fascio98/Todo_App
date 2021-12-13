class DescriptionValidator < ActiveModel::Validator
    def validate(record)
        if record.description.include?('todo')
            record.errors.add(:description, "Can't Include 'todo'")
        end
    end
end