class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email
      t.string :registration_type
      t.string :cname
      t.string :uname
      t.text   :address
      t.string :contact_no
      t.string :coffer
      t.string :com_name
      t.string :type_of_manpower
      t.string :tie_consultancy
      t.string :contact_person
      t.string :mobile_no
      t.text   :enquiry
      t.timestamps
    end
  end
end
