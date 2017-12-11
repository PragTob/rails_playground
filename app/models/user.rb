class User < ApplicationRecord
  attr_accessor :rollback

  after_save :potentially_rollback

  def potentially_rollback
    raise ActiveRecord::Rollback if rollback
  end
end
