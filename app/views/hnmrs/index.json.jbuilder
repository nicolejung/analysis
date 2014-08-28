json.array!(@hnmrs) do |hnmr|
  json.extract! hnmr, :id, :name, :filename, :analysis, :amounth, :method, :solvent1, :solvent2, :mhz, :temperature, :scans, :pulseprogram, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id
  json.url hnmr_url(hnmr, format: :json)
end
