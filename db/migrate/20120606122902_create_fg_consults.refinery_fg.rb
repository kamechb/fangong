# This migration comes from refinery_fg (originally 11)
class CreateFgConsults < ActiveRecord::Migration

  def up
    create_table :refinery_fg_consults do |t|
      t.string :user_name
      t.string :user_tel
      t.text :leave_message
      t.integer :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/consults"})
    end

    drop_table :refinery_fg_consults

  end

end
