class AddStayingToStudents < ActiveRecord::Migration
  def change
    add_column :refinery_fg_students, :staying, :string
  end
end
