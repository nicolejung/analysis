class CreateFulldocs < ActiveRecord::Migration
  def change
    create_table :fulldocs do |t|
      t.string :chemist
      t.string :source
      t.string :name
      t.string :fulltext
      t.string :format
      t.string :sumexp
      t.string :fill1
      t.string :fill2
      t.string :fill3
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd

      t.timestamps
    end
  end
end
