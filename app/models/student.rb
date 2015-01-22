class Student < ActiveRecord::Base
  attr_accessible :address, :cexam, :coaching, :course, :csalary, :email, :esalary, :experience, :gender, :gurdian, :name, :pcompany, :phone, :place, :qualification, :registration_type, :state
validates_format_of :email, with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
end
