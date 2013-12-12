class AddMultipleBirths < ActiveRecord::Migration
  def up
    add_column :town_health_records, :multiple_births_2005_2008, :float
  end

  def down
    remove_column :town_health_records, :multiple_births_2005_2008
  end
end
