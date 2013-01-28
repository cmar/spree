module Spree
  class StockLocation < ActiveRecord::Base
    def stock_level(varaint_id)
      20
    end

    def can_backorder?(variant_id)
      true
    end
  end
end
