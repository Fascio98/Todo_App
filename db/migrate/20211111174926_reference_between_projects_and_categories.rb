class ReferenceBetweenProjectsAndCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference(:projects, :category, foreign_key: true)
  end
end
