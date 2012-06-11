# This migration comes from refinery_fg (originally 16)
class AddCooperationToLinks < ActiveRecord::Migration
  def change
    add_column :refinery_fg_links, :cooperation, :boolean, :default => false
  end
end
