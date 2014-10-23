class ChangeColumnBbl < ActiveRecord::Migration
  def change
    change_column :properties, :bbl, :string
  end
end
