# This migration comes from refinery_fg (originally 7)
class CreateFgTeachers < ActiveRecord::Migration

  def up
    create_table :refinery_fg_teachers do |t|
      t.string :name, :null => false
      t.string :title
      t.string :works
      t.string :desc
      t.text :content
      t.integer :avatar_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/teachers"})
    end

    drop_table :refinery_fg_teachers

  end

end
