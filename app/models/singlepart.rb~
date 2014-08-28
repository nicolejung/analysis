class Singlepart < ActiveRecord::Base

  belongs_to :fulldoc
  has_many :hnmrs

  def  mach2
       mach1
       mach3
       mach4
       mach6
       mach7
       mach8
       mach8c
       mach10
       
 
  end

# Abtrennung der Arbeitsvorschrift
  
  def mach1
    x = experimental.split('HNMR').first
    update_attribute(:describe, x)
    
    description = Description.new
    description.singlepart_id = id
    description.fulldescribe = x
    description.save
  end

#Text1 = volle Analytik aber formatiert. Folgend wird das HNMR durch das Endsignal ). abgetrennt. 
#Es wird ein "H NMR" vorangestellt

  def mach3
    
    c = experimental.split('HNMR').last
    b = c.split(').').first
    update_attribute(:hnmr, b)
    d = '1H NMR'+ b
    update_attribute(:hnmr, d)
    mach5(b)
    
  end

#Text1 = volle Analytik aber formatiert. Folgend wird das CNMR durch das Endsignal ". " abgetrennt. 
#Es wird ein "13C NMR" vorangestellt

  def mach4
    if experimental.strip.include?('CNMR') then
    aa = experimental.split('CNMR').last
    bb = aa.split('. ').first
    update_attribute(:cnmr, bb)
    dc = '13C NMR'+ bb
    update_attribute(:cnmr, dc)
    mach4b(dc)
    end 
    
  end

#nachfolgend werden die Signale isoliert durch Abtrennen bei : und = sowie und die Generierung von einem neuen Hnmr-Eintrag>

  def mach5(b)
    if b.include?(':') then 
    c = b.split(':').last

    Hnmr.where(["singlepart_id = ?", id]).destroy_all
 
    hnmr = Hnmr.new
    hnmr.singlepart_id = id
    hnmr.analysis = c
    hnmr.save

    hnmr.createsignalfromstring

    elsif
    c = b.split('=', 2).last

    Hnmr.where(["singlepart_id = ?", id]).destroy_all
 
    hnmr = Hnmr.new
    hnmr.singlepart_id = id
    hnmr.analysis = c
    hnmr.save

    hnmr.createsignalfromstring
    end
  end

# jetzt die Signalextrahierung fuer 13C und die Generierung von einem neuen Cnmrtab-Eintrag>

  def mach4b(dc)

    Cnmr.where(["singlepart_id = ?", id]).destroy_all
 
    cnmr = Cnmr.new
    cnmr. singlepart_id = id
    cnmr.partanalysis = dc
    cnmr.save

    cnmr.machneu1
    
  end


  def mach6
    if experimental.strip.include?('IR')then
    cc = experimental.split('IR').last
    dd = cc.split('. ').first
    update_attribute(:ir, dd)
    dir = 'IR'+ dd
    update_attribute(:ir, dir)
    end  
  end

  def mach7
    if experimental.strip.include?('Raman')then
    ee = experimental.split('Raman').last
    ff = ee.split('. ').first
    update_attribute(:raman, ff)
    dra = 'Raman'+ ff
    update_attribute(:raman, dra)

    additional = Additional.new
    additional.singlepart_id = id
    additional.raman = dra
    additional.save
    end 
  end



  def mach8
    if (!experimental.include?'HRMS')then
    update_attribute(:ea, 'no_EA_given')
    elsif
    if experimental.include?('HRMS')then
    ii = experimental.split('HRMS', 2).last
    end
      

    nn = ii.split('(', 2).last
    oo = nn.split(')').first
    update_attribute(:ea, oo)

    
    if oo.include?',' then
    oo = oo.gsub!',', ''
    end
    if oo.include?'EI' then
    oo = oo.gsub!'EI', ''
    end
    if oo.include?'FAB' then
    oo = oo.gsub!'FAB', ''
    end


    celement1 = oo.split('C', 2).last
    celement2 = celement1.split('H').first
    update_attribute(:givenc, celement2)
    
    if oo.match(/(C[1-9][0-9]{0,1})(H[1-9][0-9]{0,1})/) then
    reg = /(C[1-9][0-9]{0,1})(H[1-9][0-9]{0,1})([A-Z])/
    oo.gsub!(reg, '\1\2 split \3')
    hh = oo.split('split').first
    kk = hh.split('H').last
    update_attribute(:givenh, kk)

    end
    end
  end
    

  def mach8c
    k = experimental
    if (!k.include? 'HRMS') then
     if (k.include? 'MS') then
     ii = experimental.split('MS', 2).last
     ll = ii.split('. ').first
     update_attribute(:mass2, 'MS' + ll)
     end

    end
    mach12
  end

# hier wird aus der Elementaranalyse die Zusammensetzung ermittelt

  def mach12

    if (!experimental.include?'HRMS') then
    if experimental.include?('calc') then 
       aaaa = experimental.split('13CNMR').last
       bbbb = aaaa.split('calc', 2).first
           if bbbb.match(/(C[1-9])(H[1-9])([A-Z][a-z]{0,1}[1-9])/)then
           ss = "\1".split('C').last
           update_attribute(:givenc, ss)

           end
    end
    end
  end

  
  def mach10
        a = Hnmr.where(["singlepart_id = ?", id]).sum(:amounth)
        update_attribute(:calch, a)
       # check1(a)
  end

   def check2(c)
    update_attribute(:calcc, c)
  end  
  
 # def check1(a)
  #  bb = buffer2 
   # if bb == a then
   # update_attribute(:oka, true)
   # elsif update_attribute(:oka, false)
   # end
  #end

end

