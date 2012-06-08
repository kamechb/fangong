# This migration comes from refinery_fg (originally 13)
class CreateFgActivities < ActiveRecord::Migration

  def up
    create_table :refinery_fg_activities do |t|
      t.string :title
      t.integer :main_image_id
      t.string :desc
      t.text :content
      t.integer :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/activities"})
    end

    drop_table :refinery_fg_activities

  end

end
