class CreateFgReports < ActiveRecord::Migration

  def up
    create_table :refinery_fg_reports do |t|
      t.string   :title
      t.string   :desc
      t.text     :content
      t.integer  :image_id
      t.integer  :position

      t.timestamps
    end

  end

  def down
    # if defined?(::Refinery::UserPlugin)
    #   ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-fg"})
    # end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/fg/reports"})
    end

    drop_table :refinery_fg_reports

  end

end
