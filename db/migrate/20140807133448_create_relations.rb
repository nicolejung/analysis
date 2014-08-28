class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :multiplet
      t.string :givej
      t.integer :distance
      t.string :detail
      t.string :fill1
      t.decimal :hz
      t.boolean :oka
      t.boolean :okb
      t.string :fulldoc_id
      t.string :singlepart_id
      t.string :description_id
      t.string :hnmr_id
      t.string :nmrdetailh_id

      t.timestamps
    end
  end
end
