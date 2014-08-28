class Cnmr < ActiveRecord::Base


  belongs_to :singlepart
  has_many :nmrdetailcs
  has_many :cnmrbrackets

  def machneu1
    methodnew5
    machneu8
  end 

  
  def methodnew5
    
    Cnmrbracket.where(["cnmr_id = ?", id]).destroy_all
    
    partanalysis.split('),').each do |ttttt|
    if (!ttttt.include?'NMR') then
    
    cnmrbracket = Cnmrbracket.new
    cnmrbracket.cnmr_id = id
    cnmrbracket.signal = ttttt
    cnmrbracket.save
    cnmrbracket.method3
    end
    end
  end

  def machneu8
    dd = partanalysis
    if dd.include?('=') then 
    c = dd.split('=', 2).last
    d = dd.split('=', 2).first
    if (!d.include?'J') then
    update_attribute(:buffera, c)
    u = buffera
    if u.match(/\(.[^\)]*\)/i) then
    reg = /\(.[^\)]*\)/i
    u.gsub!(reg, '')
    update_attribute(:buffera, u)
    end 
    
    Nmrdetailc.where(["cnmr_id = ?", id]).destroy_all
    u.split(',').each do |s|

    if (!s.include?'NMR')then

    nmrdetailc = Nmrdetailc.new
    nmrdetailc.cnmr_id = id
    nmrdetailc.signal = s
    nmrdetailc.save
    nmrdetailc.method2   
      end
    end
    end 
    end
       counting
  end


  def counting

    rr = nmrdetailcs.count
    b = Cnmrbracket.where(["cnmr_id = ?", id]).sum(:adaptc)
    c = b + rr
    update_attribute(:sumc, c)
    singlepart.check2(c)
  end
end

