# This migration comes from refinery_fg (originally 14)
class CreateFgLinks < ActiveRecord::Migration

  def up
    create_table :refinery_fg_links do |t|
      t.string :name
      t.string :url
      t.integer :logo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/links"})
    end

    drop_table :refinery_fg_links

  end

end
