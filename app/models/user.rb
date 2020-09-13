require 'securerandom'
class User < ApplicationRecord
  before_create do
    self.uuid = SecureRandom.uuid
    self.key  = SecureRandom.uuid
  end

  def redeemed?
    self.email != nil
  end
end
