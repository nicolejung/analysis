class CreateNmrdetailhs < ActiveRecord::Migration
  def change
    create_table :nmrdetailhs do |t|
      t.string :signal
      t.string :area
      t.decimal :shift
      t.decimal :first
      t.decimal :last
      t.string :hamount
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

      t.timestamps
    end
  end
end
