class ProductType < ApplicationRecord
    serialize :product_types, JSON
    attr_accessor :service, :real, :virtual

    def attr_accessor
        {'service' => nil, 'real' => nil, 'virtual' => nil}
    end
end
