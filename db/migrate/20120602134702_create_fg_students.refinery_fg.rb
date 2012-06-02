# This migration comes from refinery_fg (originally 2)
class CreateFgStudents < ActiveRecord::Migration

  def up
    create_table :refinery_fg_students do |t|
      # 学员报名信息
      t.string     :name, null: false
      t.string     :address
      t.string     :email
      t.string     :qq
      t.string     :msn
      t.integer    :know_from 
      t.text       :leave_message
      t.string     :tel
      t.integer    :course_id

      # 其他信息 
      t.string     :grade
      t.string     :study_class
      t.string     :interest
      t.text       :job
      t.integer    :avatar_id
      t.text       :feedback
      t.integer    :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/students"})
    end

    drop_table :refinery_fg_students

  end

end
