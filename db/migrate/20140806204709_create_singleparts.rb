class CreateSingleparts < ActiveRecord::Migration
  def change
    create_table :singleparts do |t|
      t.string :experimental
      t.string :describe
      t.string :ea
      t.string :hnmr
      t.string :cnmr
      t.string :calch
      t.string :calcc
      t.string :value
      t.string :fnmr
      t.string :pnmr
      t.string :bnmr
      t.string :nnmr
      t.string :mass1
      t.string :ir
      t.string :raman
      t.string :mass2
      t.string :mass3
      t.string :uv
      t.string :givenc
      t.string :givenh
      t.string :fill1
      t.boolean :oka
      t.boolean :okb
      t.boolean :okc
      t.boolean :okd
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
