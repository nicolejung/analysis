class CreateSumhs < ActiveRecord::Migration
  def change
    create_table :sumhs do |t|
      t.string :all
      t.integer :value
      t.string :fill1
      t.string :fill2
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd
      t.string :fulldoc_id
      t.string :singlepart_id
      t.string :description_id
      t.string :hnmr_id
      t.string :nmrdetailh_id
      t.string :coupling_id

      t.timestamps
    end
  end
end
