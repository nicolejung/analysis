class Sumh < ActiveRecord::Base
belongs_to :nmrdetailh

  def befehl4

      xxx = all.split('H').first
      update_attribute(:value, xxx)
     
  end
end




