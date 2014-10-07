class Customer < ActiveRecord::Base
  acts_as_taggable
  validates :email, presence: true

  def self.exclude(tags)
    tagged_with(tags, exclude: true)
  end

  def self.match_all(tags)
    tagged_with(tags, match_all: true)
  end

  def self.any(tags)
    tagged_with(tags, any: true)
  end
end
