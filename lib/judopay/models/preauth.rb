# frozen_string_literal: true

require_relative '../model'

module Judopay
  class Preauth < Model
    @resource_path = 'transactions/preauths'
    @valid_api_methods = [:all]
  end
end
