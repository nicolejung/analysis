class Nmrdetailh < ActiveRecord::Base
        has_many :relations
 	has_many :sumhs
        belongs_to :hnmr

  def createsignalfromstring2
      verschiebung2
      novel1
  end
     
  def verschiebung2
     e = signal.split(' (').first
     update_attribute(:area, e)
     g = e.split('-').first
     h = e.split('-').last
       if g == h
       update_attribute(:shift, e)
       bearbeitung1
       else
       update_attribute(:first, g)
       update_attribute(:last, h)
       bearbeitung1
       end 
  end

  def bearbeitung1  
    j = signal.split(' (').last

    j.split(',').each do |ggg|
      if (ggg.strip.include? 'm')
        then update_attribute(:fill1, ggg)
               neuetabelle(ggg)
        end

      if (ggg.strip.include? 's')
        then update_attribute(:fill1, ggg)
               neuetabelle(ggg)
        end

      if (ggg.strip.include? 't')
        then update_attribute(:fill1, ggg)
               neuetabelle(ggg)
        end

      if (ggg.strip.include? 'd')
        then update_attribute(:fill1, ggg)
               neuetabelle(ggg)
        end


      if (ggg.strip.include? 'q')
        then update_attribute(:fill1, ggg)
               neuetabelle(ggg)
        end
    end
  end

  def neuetabelle(ggg)
    
	Relation.where(["nmrdetailh_id = ?", id]).destroy_all
	k = signal.split(' (', 2).last
	k.split(',').each do |fff|
       
	if (fff.include? 'J') then
      
	relation = Relation.new
	relation.nmrdetailh_id = id
	relation.givej = fff
	relation.save
	relation.befehl1(ggg)
	relation.befehl2
	end
        

    
      if (!fff.include? 'J') then
           
           if (fff.include? 'H') then
           if (!fff.include? '-H') then
         
           if !fff.match(/S{0,1}N{0,1}O{0,1}C[1-9]{0,1}H/) then
           if !fff.match(/NC[1-9]{0,1}H/) then
           if !fff.match(/N/) then
           if !fff.match(/O/) then
           if !fff.match(/S/) then
           if !fff.match(/P/) then
           if !fff.match(/C/) then
                 ddd = fff + ','
                 if (ddd.include? 'H,') then
 
                 Sumh.where(["nmrdetailh_id = ?", id]).destroy_all
   		 sumh = Sumh.new
   		 sumh.nmrdetailh_id = id
    		 sumh.all = fff
   		 sumh.save

                 sumh.befehl4
       
                 a = Sumh.where(["nmrdetailh_id = ?", id]).sum(:value)
                 update_attribute(:hamount, a)
                 end
                 end
          
          end
          end
          end
          end
          end
          end
          end
          end
          end
      end
  end
end

