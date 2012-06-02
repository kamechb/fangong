# This migration comes from refinery_fg (originally 3)
class RenameStudentsCourseId < ActiveRecord::Migration
  def up
    rename_column :refinery_fg_students, :course_id, :profession_id
  end

  def down
    rename_column :refinery_fg_students, :profession_id, :course_id
  end
end
