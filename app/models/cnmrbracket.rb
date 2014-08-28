class Cnmrbracket < ActiveRecord::Base
  
  belongs_to :cnmr  
  #has_many :nmrdetailhs

  def method3
   
   s = signal
   oo = s.split(' (', 2).first
   if (!oo.include?'=') then
     if (!oo.include?':') then
     update_attribute(:buffera, oo)
     end  
   end
   	if (oo.include?'=') then
   	uu = oo.split('=', 2).last
        update_attribute(:buffera, uu) 
        end
   	if (oo.include?':') then
   	uu = oo.split(':', 2).last
        update_attribute(:buffera, uu) 
  	end
    
  method4
  end

#Aufspaltung des Signals nach der Klammer und Angabe des Inhaltes der Klammer

  def method4
    s = signal
    jj = s.split('(', 2).last
    if (!jj.include?'(') then
      if jj.include?')' then
      jj = jj.gsub(')', '')
      end
    end
    update_attribute(:bufferb, jj)
    method5(jj)
  end

  def method5(jj)
  
    jj.split(',').each do |s|
    if (!s.include?'=')then
    if (!s.include?':')then
    if (!s.include?'Hz')then
    if (!s.include?'J')then

    if s.match(/([1-9])( [C-S])/)
    then
    reg = /([1-9])( [C-S])/
    aa = s.gsub!(reg, '\1 fff \2')
    aa = aa.split('fff').first
    update_attribute(:countc, aa)
           if aa.match(/([1-9])/) then
           update_attribute(:adaptc, (countc.to_i - 1).to_s)
           end
    elsif
    if (s.include?'x')then
    cc = s.split('x').first
    update_attribute(:countc, cc)
    	if cc.match(/([1-9])/) then
    	update_attribute(:adaptc, (countc.to_i - 1).to_s)
        end
  
    end
    end
    end
    end
    end
    end
    end
     method6(jj)
  end

  def method6(jj)
    jj.split(',').each do |p|

    if (p.include?'Hz')then
    elsif (p.include?'J')then   

    Couplingc.where(["cnmrbracket = ?", id]).destroy_all
 
    couplingc = Couplingc.new
    couplingc.table5_id = id
    couplingc.coupling = p
    couplingc.save
   
    
  end
  end
  end
end 

