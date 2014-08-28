class CreateCnmrbrackets < ActiveRecord::Migration
  def change
    create_table :cnmrbrackets do |t|
      t.string :signal
      t.string :multiplet
      t.string :amountc
      t.string :coupling
      t.string :buffera
      t.string :bufferb
      t.string :countc
      t.string :adaptc
      t.boolean :oka
      t.boolean :okb
      t.string :nmrdetailc_id
      t.string :cnmr_id
      t.string :singlepart_id
      t.string :description_id
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
