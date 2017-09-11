class AddDefaultLevelToCatch < ActiveRecord::Migration[5.1]
  def change
  	change_column :catches, :level, :integer, default: 0
  end
end
