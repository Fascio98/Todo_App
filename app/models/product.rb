class Product < ApplicationRecord
include Producttable
    belongs_to :product, polymorphic:true

    # before_create do

    #     Rails.logger.info('===> before_create')
    #     self.quantity +=2
    # end

    # before_save do

    #     Rails.logger.info('===> before_save')
    #     self.quantity +=1

    # end

    # before_update do

    #     Rails.logger.info('===> before_update')
    #     self.quantity +=20

    # end

    # before_commit do
        # Rails.logger.info('===> before_commit')
        # self.quantity +=10

    # end
    
    
    # after_create do
    #     Rails.logger.info('===> after_create')
    #     self.quantity +=2
    # end

    # after_save do
    #     Rails.logger.info('===> after_save')
    #     self.quantity +=1
    # end

    # after_update do
    #     Rails.logger.info('===> after_update)')
    #     self.quantity +=20
    # end

    # after_commit do
    #     Rails.logger.info('===> after_commit')
    #     self.quantity +=10
    # end
    # around_create :log_to_console
    # def log_to_console
    #     Rails.logger.info('===> around_create')
    # end

    
end
