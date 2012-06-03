# This migration comes from refinery_fg (originally 10)
class AddOpenedToProfessions < ActiveRecord::Migration
  def change
    add_column :refinery_fg_professions, :opened, :boolean, :default => true  # 是否开课
  end
end
