class Person < ApplicationRecord
  paginates_per  50
  validates_presence_of :firstname, :lastname, :email
  validates_uniqueness_of :email
  serialize :tags, Array
  after_save :record_tags
  before_save :format_tags

  def fullname
    "#{firstname} #{lastname}"
  end

  private

  def format_tags
    tags.map!{|t| "#{t}".titleize.strip.gsub(' ','')}
  end

  def record_tags
    self.tags.each do |tag|
      Tag.create(name: tag)
    end
  end
end
