class AddGraduationToStudents < ActiveRecord::Migration
  def change
    add_column :refinery_fg_students, :graduation, :boolean, :default => false # true: 毕业, false: 未毕业
  end
end
