class AddCooperationToLinks < ActiveRecord::Migration
  def change
    add_column :refinery_fg_links, :cooperation, :boolean, :default => false
  end
end
