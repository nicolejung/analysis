class CreateAdditionals < ActiveRecord::Migration
  def change
    create_table :additionals do |t|
      t.string :raman
      t.string :hrms
      t.string :uv
      t.string :fnmr
      t.string :pnmr
      t.string :bnmr
      t.string :nnmr
      t.string :mass1
      t.string :mass3
      t.string :buffer1
      t.string :buffer2
      t.string :buffer3
      t.boolean :oka
      t.boolean :okb
      t.string :singlepart_id
      t.string :description_id
      t.string :fulldoc_id

      t.timestamps
    end
  end
end
