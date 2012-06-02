class CreateFgWorks < ActiveRecord::Migration

  def up
    create_table :refinery_fg_works do |t|
      t.string   :name
      t.string   :desc
      t.text     :content
      t.integer  :main_image_id
      t.integer  :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/works"})
    end

    drop_table :refinery_fg_works

  end

end
