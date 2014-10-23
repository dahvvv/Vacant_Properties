class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :boro
      t.string :block
      t.integer :lot
      t.string :parcel_name
      t.string :parcel_address
      t.string :juris
      t.string :jurisdiction_description
      t.string :rpad
      t.string :rpad_description
      t.integer :prop_front
      t.integer :prop_depth
      t.integer :prop_sqft
      t.boolean :irreg
      t.integer :bld_front
      t.integer :bld_depth
      t.integer :bld_sqft
      t.integer :num_bld
      t.integer :floors
      t.integer :cd
      t.integer :council_district
      t.integer :bbl
      t.boolean :waterfront
      t.boolean :urban_renewal_site
      t.string :agency
      t.string :owned_leased
      t.string :primary_use
    end
  end
end
