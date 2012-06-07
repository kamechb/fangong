class CreateFgJobs < ActiveRecord::Migration

  def up
    create_table :refinery_fg_jobs do |t|
      t.string :name
      t.string :company_name
      t.text :desc
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
      ::Refinery::Page.delete_all({:link_url => "/fg/jobs"})
    end

    drop_table :refinery_fg_jobs

  end

end
