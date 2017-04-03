require_relative '../model'

module Judopay
  class Transaction < Model
    @resource_path = 'transactions'
    @valid_api_methods = %i{all find}
  end
end
