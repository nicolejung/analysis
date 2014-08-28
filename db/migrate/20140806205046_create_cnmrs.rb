class CreateCnmrs < ActiveRecord::Migration
  def change
    create_table :cnmrs do |t|
      t.string :name
      t.string :filename
      t.string :partanalysis
      t.string :solvent1
      t.string :solvent2
      t.string :sumc
      t.string :instrument
      t.string :method
      t.string :pulseprogram
      t.string :temp
      t.string :scans
      t.string :buffera
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd
      t.string :singlepart_id
      t.string :description_id
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
