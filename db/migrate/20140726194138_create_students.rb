class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :gurdian
      t.string :email
      t.string :gender
      t.string :qualification
      t.string :coaching
      t.string :registration_type
      t.string :cexam
      t.string :place
      t.string :state
      t.string :course
      t.string :experience
      t.string :pcompany
      t.string :csalary
      t.string :esalary

      t.timestamps
    end
  end
end
