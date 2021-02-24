class User < ApplicationRecord
  belongs_to :person
  belongs_to :role
  validates_presence_of :username, :password
  validates_uniqueness_of :username

end
