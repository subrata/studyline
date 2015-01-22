class Contact < ActiveRecord::Base
  attr_accessible :body, :email, :name, :phone
  validates_format_of :email, with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
end
