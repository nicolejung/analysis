class Nmrdetailc < ActiveRecord::Base


  belongs_to :cnmr
  
  
  def method2

    u = signal
    if (u.include?'=')then
    u = u.split('=').last
    update_attribute(:signal, u)
    end
    if (u.include?':')then
    u = u.split(':').last
    update_attribute(:signal, u)
    end   
    if u.match(/.\)/)then
    reg = /.\)/
    u.gsub!(reg, '')
    update_attribute(:signal, u)
    end 

    neuemethode1
 
  end

  def neuemethode1
     update_attribute(:buffer1, '1'.to_i)
     
  end


end
