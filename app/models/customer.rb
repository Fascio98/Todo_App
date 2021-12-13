class Customer < ApplicationRecord
    # has_many :customer_tasks
    # has_many :tasks, through: :customer_tasks
    has_and_belongs_to_many :customers, join_table: 'customer_tasks'
end
