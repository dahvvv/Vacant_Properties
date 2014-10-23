class ChangeColumnBlock < ActiveRecord::Migration
  def change
    change_column :properties, :block, :string
  end
end
