class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :samplename
      t.string :fulldescribe
      t.string :purification
      t.string :rfvalue
      t.string :yield
      t.string :fill1
      t.string :fill2
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd
      t.string :fulldoc_id
      t.string :singlepart_id

      t.timestamps
    end
  end
end
