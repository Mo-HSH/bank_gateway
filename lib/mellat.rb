require "mellat/version"
require_relative 'mellat/health_check'
require_relative 'mellat/payment_request'
require_relative 'mellat/payment_verification'
require_relative 'mellat/configuration'

module Mellat

  def self.up?
    Mellat::ClientRequest.new.health_check
  end

  def self.authorize(params)
    Mellat::PaymentRequest.new.apply(params)
  end

  def self.verify(params)
    Mellat::PaymentRequest.new.verify(params)
  end
end
