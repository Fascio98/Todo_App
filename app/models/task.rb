class Task < ApplicationRecord
  belongs_to :project, class_name:'Project', foreign_key:'project_id'
  # has_many :customer_tasks
  # has_many :customers, through: :customer_tasks
  has_and_belongs_to_many :customers, join_table: 'customer_tasks'
end
