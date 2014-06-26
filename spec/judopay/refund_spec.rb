require 'spec_helper'
require_relative '../../lib/judopay/models/refund'

describe Judopay::Refund do
  it "should list all refunds" do
    stub_get('/transactions/refunds').
      to_return(:status => 200,
                :body => lambda { |request| fixture("transactions/all.json") })

    transactions = Judopay::Refund.all
    expect(transactions).to be_a(Hash)
    expect(transactions.results[0].amount).to equal(1.01)
  end
end