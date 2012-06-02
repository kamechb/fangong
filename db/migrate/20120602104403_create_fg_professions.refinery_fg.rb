# This migration comes from refinery_fg (originally 1)
class CreateFgProfessions < ActiveRecord::Migration

  def up
    create_table :refinery_fg_professions do |t|
      t.string :name, :null => false
      t.text :content
      t.string :open_at
      t.boolean :recommend, :default => false
      
      t.integer :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/professions"})
    end

    drop_table :refinery_fg_professions

  end

end
