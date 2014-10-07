class Customer < ActiveRecord::Base
  acts_as_taggable
  validates :email, presence: true
end
