# frozen_string_literal: true

require 'logger'

module Judopay
  class NullLogger < Logger
    def initialize(*) end

    def add(*) end
  end
end
