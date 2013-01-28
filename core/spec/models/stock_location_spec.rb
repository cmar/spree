require 'spec_helper'

describe Spree::StockLocation do

  it 'checks stock levels for a variant' do
    subject.stock_level(20).should eq 20
  end

end
