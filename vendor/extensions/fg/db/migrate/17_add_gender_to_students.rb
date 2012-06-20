class AddGenderToStudents < ActiveRecord::Migration
  def change
    add_column :refinery_fg_students, :gender, :boolean, :default => false # true: 男, false: 女
    add_column :refinery_fg_students, :remittance, :text 
  end
end
