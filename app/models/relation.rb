class Relation < ActiveRecord::Base

  belongs_to :nmrdetailh

  
  def befehl1(ggg)
       update_attribute(:multiplet, ggg)
       m = givej.split('=').last
               if (m.include? 'Hz') then
               o = m.split('Hz').first
               update_attribute(:hz, o)
               elsif 
               p = m.strip
               update_attribute(:hz, p)           
               end
              
  end

  def befehl2
    p = givej.split('J').first.strip
    update_attribute(:distance, p)

  end
end

