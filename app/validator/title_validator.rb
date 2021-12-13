class TitleValidator < ActiveModel::Validator
    def validate(record)
      if exists.where(record.active:true)
        record.errors.add :title, "This name is unique!"
      end
    end
end