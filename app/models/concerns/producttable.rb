module Producttable
    extend ActiveSupport::Concern

    def product_info
        "Product: #{self.product_type}, ID: #{self.product_id}"
        
    end

    class_methods do
        def about
            "Current Class: #{self}"
        end
    end
end