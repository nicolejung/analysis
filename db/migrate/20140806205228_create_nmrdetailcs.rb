class CreateNmrdetailcs < ActiveRecord::Migration
  def change
    create_table :nmrdetailcs do |t|
      t.string :signal
      t.string :buffer1
      t.string :buffer2
      t.string :buffer3
      t.boolean :oka
      t.boolean :okb
      t.string :cnmr_id
      t.string :singlepart_id
      t.string :description_id
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
