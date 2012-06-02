# This migration comes from refinery_fg (originally 8)
class AddResearchToWorks < ActiveRecord::Migration
  def change
    add_column :refinery_fg_works, :research, :boolean, :default => false
  end
end
