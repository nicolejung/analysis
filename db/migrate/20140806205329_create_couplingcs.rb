class CreateCouplingcs < ActiveRecord::Migration
  def change
    create_table :couplingcs do |t|
      t.string :signal
      t.string :multiplet
      t.string :amountc
      t.string :coupling
      t.string :buffera
      t.string :bufferb
      t.string :bufferc
      t.string :bufferd
      t.boolean :oka
      t.boolean :okb
      t.string :cnmrbracket_id
      t.string :nmrdetailc_id
      t.string :cnmr_id
      t.string :singlepart_id
      t.string :description_id
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
