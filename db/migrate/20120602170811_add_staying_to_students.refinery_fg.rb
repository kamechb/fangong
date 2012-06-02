# This migration comes from refinery_fg (originally 9)
class AddStayingToStudents < ActiveRecord::Migration
  def change
    add_column :refinery_fg_students, :staying, :string
  end
end
