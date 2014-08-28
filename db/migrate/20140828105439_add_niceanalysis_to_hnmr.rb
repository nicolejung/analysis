class AddNiceanalysisToHnmr < ActiveRecord::Migration
  def change
    add_column :hnmrs, :niceanalysis, :text
  end
end
