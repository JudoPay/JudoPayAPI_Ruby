require_relative '../../model'

module Judopay
  module Market
    class Refund < Judopay::Refund
      @resource_path = 'market/transactions/refunds'
      @valid_api_methods = %i{all create}
    end
  end
end
