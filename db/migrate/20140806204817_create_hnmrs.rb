class CreateHnmrs < ActiveRecord::Migration
  def change
    create_table :hnmrs do |t|
      t.string :name
      t.string :filename
      t.string :analysis
      t.string :amounth
      t.string :method
      t.string :solvent1
      t.string :solvent2
      t.decimal :mhz
      t.decimal :temperature
      t.integer :scans
      t.string :pulseprogram
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd
      t.string :fulldoc_id
      t.string :singlepart_id
      t.string :description_id

      t.timestamps
    end
  end
end
