# frozen_string_literal: true

require 'spec_helper'
require_relative '../../lib/judopay/models/token_preauth'

describe Judopay::TokenPayment do
  it 'should create a new payment given a valid payment token and card token' do
    stub_post('/transactions/payments').
      to_return(:status => 200,
                :body => lambda { |_request| fixture('token_payments/create.json') })

    payment = build(:token_payment)
    response = payment.create

    expect(response).to be_a(Hash)
    expect(response.result).to eq('Success')
  end

  it 'should return a bad request exception if basic validation fails' do
    expect(lambda do
      Judopay::TokenPayment.new.create
    end).to raise_error(Judopay::ValidationError)
  end
end
