class Client < ActiveRecord::Base
   attr_accessible :cname, :address, :contact_no, :email, :registration_type, :uname, :coffer, :com_name, :type_of_manpower, :tie_consultancy, :contact_person, :mobile_no, :enquiry
end
